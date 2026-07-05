import '../models/patient.dart';
import '../models/prediction_result.dart';

class PredictionService {
  PredictionResult predict(Patient patient) {
    double score = 0;

    if (patient.age >= 65) score += 20;

    if (patient.diabetes) score += 10;

    if (patient.highBloodPressure) score += 15;

    if (patient.smoking) score += 10;

    if (patient.anaemia) score += 10;

    if (patient.ejectionFraction < 40) score += 20;

    if (patient.serumCreatinine > 1.5) score += 10;

    if (patient.serumSodium < 135) score += 5;

    if (score > 100) {
      score = 100;
    }

    String riskLevel;
    String recommendation;

    if (score < 35) {
      riskLevel = "Low Risk";
      recommendation =
          "Maintain a healthy lifestyle and continue regular health checkups.";
    } else if (score < 70) {
      riskLevel = "Medium Risk";
      recommendation =
          "Consult a doctor and monitor your heart health regularly.";
    } else {
      riskLevel = "High Risk";
      recommendation =
          "Seek immediate medical evaluation from a qualified healthcare professional.";
    }

    return PredictionResult(
      riskPercentage: score,
      riskLevel: riskLevel,
      recommendation: recommendation,
      predictionTime: DateTime.now(),
    );
  }
}