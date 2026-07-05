import '../models/prediction_result.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();

  factory DatabaseService() {
    return _instance;
  }

  DatabaseService._internal();

  final List<PredictionResult> _history = [];

  void savePrediction(PredictionResult result) {
    _history.add(result);
  }

  List<PredictionResult> getPredictionHistory() {
    return List.unmodifiable(_history);
  }

  void deletePrediction(int index) {
    if (index >= 0 && index < _history.length) {
      _history.removeAt(index);
    }
  }

  void clearHistory() {
    _history.clear();
  }

  int get totalPredictions => _history.length;
}