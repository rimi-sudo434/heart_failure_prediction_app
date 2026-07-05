import 'package:flutter/material.dart';

class PredictionCard extends StatelessWidget {
  final double riskPercentage;
  final String riskLevel;
  final String recommendation;

  const PredictionCard({
    super.key,
    required this.riskPercentage,
    required this.riskLevel,
    required this.recommendation,
  });

  Color get riskColor {
    switch (riskLevel.toLowerCase()) {
      case "low risk":
        return Colors.green;
      case "medium risk":
        return Colors.orange;
      case "high risk":
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

  IconData get riskIcon {
    switch (riskLevel.toLowerCase()) {
      case "low risk":
        return Icons.favorite;
      case "medium risk":
        return Icons.warning_amber_rounded;
      case "high risk":
        return Icons.local_hospital;
      default:
        return Icons.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              riskIcon,
              color: riskColor,
              size: 70,
            ),

            const SizedBox(height: 15),

            Text(
              riskLevel,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: riskColor,
              ),
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value: riskPercentage / 100,
              minHeight: 12,
              borderRadius: BorderRadius.circular(10),
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation(riskColor),
            ),

            const SizedBox(height: 10),

            Text(
              "${riskPercentage.toStringAsFixed(1)}%",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Divider(height: 30),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recommendation",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              recommendation,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}