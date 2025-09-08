import 'package:flutter/material.dart';
import 'stethoscope_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final StethoscopeModel _model = StethoscopeModel();
  bool _isModelLoaded = false;
  bool _isAnalyzing = false;
  Map<String, dynamic>? _lastResult;

  @override
  void initState() {
    super.initState();
    _loadModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _loadModel() async {
    setState(() {
      _isModelLoaded = false;
    });

    print('Loading stethoscope model...');
    bool success = await _model.loadModel();

    setState(() {
      _isModelLoaded = success;
    });

    if (mounted) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success ? 'Model loaded successfully' : 'Failed to load model',
          ),
        ),
      );
    }
  }

  Future<void> _analyzeAudio() async {
    if (!_isModelLoaded) {
      if (mounted) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Model not loaded yet')));
      }
      return;
    }

    setState(() {
      _isAnalyzing = true;
    });

    try {
      print('Starting audio analysis...');

      // ✅ Use main thread model (isolates can't access Flutter assets)
      Map<String, dynamic> result = await _model
          .predict([])
          .timeout(
            const Duration(seconds: 15),
            onTimeout: () {
              throw Exception('Analysis timed out after 15 seconds');
            },
          );

      setState(() {
        _lastResult = result;
        _isAnalyzing = false;
      });

      print('Analysis complete: ${result['predicted_class']}');

      // Show popup with all dataset results
      _showDatasetResults();
    } catch (e) {
      print('Analysis failed: $e');
      setState(() {
        _isAnalyzing = false;
      });

      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar() // ✅ Prevent SnackBar crash
        ..showSnackBar(SnackBar(content: Text('Analysis failed: $e')));
    } finally {
      // Ensure _isAnalyzing is always reset, even if there's an uncaught exception
      if (_isAnalyzing) {
        setState(() {
          _isAnalyzing = false;
        });
      }
    }
  }

  void _showDatasetResults() async {
    // Show loading first
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          backgroundColor: Colors.grey,
          title: Text(
            'Loading Audio Files...',
            style: TextStyle(color: Colors.white),
          ),
          content: SizedBox(
            height: 100,
            child: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );

    try {
      // ✅ Load all audio file results on main thread (isolates can't access assets)
      List<Map<String, dynamic>> allResults = await _model.getAllAudioResults();

      // Close loading dialog
      Navigator.of(context).pop();

      // Show results dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.grey[900],
            title: const Text(
              'Audio Dataset Results',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            content: SizedBox(
              width: double.maxFinite,
              height: 400,
              child: ListView.builder(
                itemCount: allResults.length,
                itemBuilder: (context, index) {
                  var result = allResults[index];
                  return Card(
                    color: Colors.grey[800],
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            result['name'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildResultItem(
                                'Pneumonia',
                                '${result['pneumonia_percent']}%',
                                Colors.red[300]!,
                              ),
                              _buildResultItem(
                                'TB',
                                '${result['tb_percent']}%',
                                Colors.orange[300]!,
                              ),
                              _buildResultItem(
                                'Normal',
                                '${result['normal_percent']}%',
                                Colors.green[300]!,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  'Close',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Close loading dialog
      Navigator.of(context).pop();

      // Show error
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar() // ✅ Prevent SnackBar crash
        ..showSnackBar(
          SnackBar(content: Text('Failed to load audio files: $e')),
        );
    }
  }

  Widget _buildResultItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 12),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon/co-logo.png', width: 32, height: 32),
            const SizedBox(width: 8),
            const Text(
              'Coeur AI',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: ElevatedButton.icon(
                onPressed: _isAnalyzing ? null : _analyzeAudio,
                icon: _isAnalyzing
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : const Icon(Icons.bluetooth, color: Colors.white),
                label: Text(
                  _isAnalyzing
                      ? 'Analyzing Audio...'
                      : (_isModelLoaded
                            ? 'Analyze Audio' // ✅ Removed (Demo) since using real audio
                            : 'Loading Model...'),
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isModelLoaded
                      ? Colors.blueAccent
                      : Colors.grey,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[850]?.withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRiskIndicator('Risk of Pneumonia', _getPneumoniaRisk()),
                _buildRiskIndicator('Risk of TB', _getTBRisk()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getPneumoniaRisk() {
    if (_lastResult == null) return '--%';

    Map<String, double> probs = _lastResult!['probabilities'];
    double pneumoniaProb = probs['Pneumonia'] ?? 0.0;
    return '${(pneumoniaProb * 100).toStringAsFixed(1)}%';
  }

  String _getTBRisk() {
    if (_lastResult == null) return '--%';

    Map<String, double> probs = _lastResult!['probabilities'];
    double tbProb = probs['TB'] ?? 0.0;
    return '${(tbProb * 100).toStringAsFixed(1)}%';
  }

  Widget _buildRiskIndicator(String title, String value) {
    // Get color based on risk level
    Color valueColor = Colors.white;
    if (value != '--%') {
      double riskValue = double.tryParse(value.replaceAll('%', '')) ?? 0.0;
      if (riskValue > 70) {
        valueColor = Colors.red;
      } else if (riskValue > 40) {
        valueColor = Colors.orange;
      } else {
        valueColor = Colors.green;
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}
