import 'package:flutter/material.dart';

class Helpers {
  Helpers._();

  static String formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/"
        "${date.month.toString().padLeft(2, '0')}/"
        "${date.year}";
  }

  static String formatTime(DateTime date) {
    return "${date.hour.toString().padLeft(2, '0')}:"
        "${date.minute.toString().padLeft(2, '0')}";
  }

  static String formatDateTime(DateTime date) {
    return "${formatDate(date)} ${formatTime(date)}";
  }

  static Color getRiskColor(String riskLevel) {
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

  static IconData getRiskIcon(String riskLevel) {
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

  static String formatPercentage(double value) {
    return "${value.toStringAsFixed(1)}%";
  }

  static String yesNo(bool value) {
    return value ? "Yes" : "No";
  }
}