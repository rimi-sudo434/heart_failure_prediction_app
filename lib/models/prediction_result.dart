class PredictionResult {
  final double riskPercentage;
  final String riskLevel;
  final String recommendation;
  final DateTime predictionTime;

  PredictionResult({
    required this.riskPercentage,
    required this.riskLevel,
    required this.recommendation,
    required this.predictionTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'riskPercentage': riskPercentage,
      'riskLevel': riskLevel,
      'recommendation': recommendation,
      'predictionTime': predictionTime.toIso8601String(),
    };
  }

  factory PredictionResult.fromMap(Map<String, dynamic> map) {
    return PredictionResult(
      riskPercentage: (map['riskPercentage'] as num).toDouble(),
      riskLevel: map['riskLevel'] as String,
      recommendation: map['recommendation'] as String,
      predictionTime: DateTime.parse(map['predictionTime'] as String),
    );
  }
}