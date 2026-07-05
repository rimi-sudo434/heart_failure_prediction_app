class Patient {
  final String name;
  final int age;
  final String gender;
  final bool anaemia;
  final bool diabetes;
  final bool highBloodPressure;
  final bool smoking;
  final double ejectionFraction;
  final double serumCreatinine;
  final double serumSodium;
  final double platelets;
  final double creatininePhosphokinase;
  final int heartRate;
  final int followUpDays;

  Patient({
    required this.name,
    required this.age,
    required this.gender,
    required this.anaemia,
    required this.diabetes,
    required this.highBloodPressure,
    required this.smoking,
    required this.ejectionFraction,
    required this.serumCreatinine,
    required this.serumSodium,
    required this.platelets,
    required this.creatininePhosphokinase,
    required this.heartRate,
    required this.followUpDays,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'gender': gender,
      'anaemia': anaemia,
      'diabetes': diabetes,
      'highBloodPressure': highBloodPressure,
      'smoking': smoking,
      'ejectionFraction': ejectionFraction,
      'serumCreatinine': serumCreatinine,
      'serumSodium': serumSodium,
      'platelets': platelets,
      'creatininePhosphokinase': creatininePhosphokinase,
      'heartRate': heartRate,
      'followUpDays': followUpDays,
    };
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    return Patient(
      name: map['name'],
      age: map['age'],
      gender: map['gender'],
      anaemia: map['anaemia'],
      diabetes: map['diabetes'],
      highBloodPressure: map['highBloodPressure'],
      smoking: map['smoking'],
      ejectionFraction: map['ejectionFraction'].toDouble(),
      serumCreatinine: map['serumCreatinine'].toDouble(),
      serumSodium: map['serumSodium'].toDouble(),
      platelets: map['platelets'].toDouble(),
      creatininePhosphokinase:
          map['creatininePhosphokinase'].toDouble(),
      heartRate: map['heartRate'],
      followUpDays: map['followUpDays'],
    );
  }
}