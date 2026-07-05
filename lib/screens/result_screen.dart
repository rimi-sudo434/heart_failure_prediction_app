import 'package:flutter/material.dart';

import '../models/prediction_result.dart';
import '../widgets/prediction_card.dart';
import 'home_screen.dart';
import 'patient_form_screen.dart';

class ResultScreen extends StatelessWidget {
  final PredictionResult result;

  const ResultScreen({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prediction Result"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              PredictionCard(
                riskPercentage: result.riskPercentage,
                riskLevel: result.riskLevel,
                recommendation: result.recommendation,
              ),

              const SizedBox(height: 20),

              Card(
                elevation: 4,
                child: ListTile(
                  leading: const Icon(
                    Icons.access_time,
                    color: Colors.blue,
                  ),
                  title: const Text("Prediction Time"),
                  subtitle: Text(
                    result.predictionTime.toString(),
                  ),
                ),
              ),

              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.refresh),
                  label: const Text("New Prediction"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const PatientFormScreen(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.home),
                  label: const Text("Back to Home"),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                      (route) => false,
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}