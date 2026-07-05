class AppConstants {
  AppConstants._();

  // App Information
  static const String appName = "Heart Failure Prediction";
  static const String appVersion = "1.0.0";

  // Dropdown Lists
  static const List<String> genderList = [
    "Male",
    "Female",
  ];

  static const List<String> yesNoList = [
    "Yes",
    "No",
  ];

  // Age Limits
  static const int minAge = 1;
  static const int maxAge = 120;

  // Heart Rate Limits (bpm)
  static const int minHeartRate = 30;
  static const int maxHeartRate = 220;

  // Ejection Fraction (%)
  static const double minEjectionFraction = 10;
  static const double maxEjectionFraction = 80;

  // Serum Creatinine (mg/dL)
  static const double minSerumCreatinine = 0.1;
  static const double maxSerumCreatinine = 15.0;

  // Serum Sodium (mEq/L)
  static const double minSerumSodium = 100.0;
  static const double maxSerumSodium = 170.0;

  // Platelets (kiloplatelets/mL)
  static const double minPlatelets = 10000;
  static const double maxPlatelets = 900000;

  // Creatinine Phosphokinase (mcg/L)
  static const double minCPK = 20;
  static const double maxCPK = 8000;

  // Follow-up Time (days)
  static const int minFollowUpDays = 1;
  static const int maxFollowUpDays = 300;

  // Risk Thresholds
  static const double lowRiskLimit = 35;
  static const double mediumRiskLimit = 70;
}