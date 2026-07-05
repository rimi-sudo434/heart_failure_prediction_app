import 'package:flutter/material.dart';

import '../models/patient.dart';
import '../models/prediction_result.dart';
import '../services/prediction_service.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_textfield.dart';
import '../utils/validators.dart';
import 'result_screen.dart';

class PatientFormScreen extends StatefulWidget {
  const PatientFormScreen({super.key});

  @override
  State<PatientFormScreen> createState() => _PatientFormScreenState();
}

class _PatientFormScreenState extends State<PatientFormScreen> {
  final _formKey = GlobalKey<FormState>();

  final PredictionService _predictionService = PredictionService();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _ejectionFractionController =
      TextEditingController();
  final TextEditingController _serumCreatinineController =
      TextEditingController();
  final TextEditingController _serumSodiumController =
      TextEditingController();
  final TextEditingController _plateletsController =
      TextEditingController();
  final TextEditingController _cpkController =
      TextEditingController();
  final TextEditingController _heartRateController =
      TextEditingController();
  final TextEditingController _followUpController =
      TextEditingController();

  String gender = "Male";
  String anaemia = "No";
  String diabetes = "No";
  String highBloodPressure = "No";
  String smoking = "No";

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _ejectionFractionController.dispose();
    _serumCreatinineController.dispose();
    _serumSodiumController.dispose();
    _plateletsController.dispose();
    _cpkController.dispose();
    _heartRateController.dispose();
    _followUpController.dispose();
    super.dispose();
  }

  void _predict() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    Patient patient = Patient(
      name: _nameController.text.trim(),
      age: int.parse(_ageController.text),
      gender: gender,
      anaemia: anaemia == "Yes",
      diabetes: diabetes == "Yes",
      highBloodPressure: highBloodPressure == "Yes",
      smoking: smoking == "Yes",
      ejectionFraction:
          double.parse(_ejectionFractionController.text),
      serumCreatinine:
          double.parse(_serumCreatinineController.text),
      serumSodium:
          double.parse(_serumSodiumController.text),
      platelets:
          double.parse(_plateletsController.text),
      creatininePhosphokinase:
          double.parse(_cpkController.text),
      heartRate:
          int.parse(_heartRateController.text),
      followUpDays:
          int.parse(_followUpController.text),
    );

    PredictionResult result =
        _predictionService.predict(patient);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(result: result),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patient Information"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            CustomTextField(
              controller: _nameController,
              label: "Patient Name",
              icon: Icons.person,
              validator: Validators.validateName,
            ),

            CustomTextField(
              controller: _ageController,
              label: "Age",
              icon: Icons.cake,
              keyboardType: TextInputType.number,
              validator: Validators.validateAge,
            ),

            CustomDropdown(
              label: "Gender",
              value: gender,
              icon: Icons.people,
              items: const ["Male", "Female"],
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            CustomDropdown(
              label: "Anaemia",
              value: anaemia,
              icon: Icons.bloodtype,
              items: const ["Yes", "No"],
              onChanged: (value) {
                setState(() {
                  anaemia = value!;
                });
              },
            ),

            CustomDropdown(
              label: "Diabetes",
              value: diabetes,
              icon: Icons.medical_services,
              items: const ["Yes", "No"],
              onChanged: (value) {
                setState(() {
                  diabetes = value!;
                });
              },
            ),

            CustomDropdown(
              label: "High Blood Pressure",
              value: highBloodPressure,
              icon: Icons.monitor_heart,
              items: const ["Yes", "No"],
              onChanged: (value) {
                setState(() {
                  highBloodPressure = value!;
                });
              },
            ),

            CustomDropdown(
              label: "Smoking",
              value: smoking,
              icon: Icons.smoking_rooms,
              items: const ["Yes", "No"],
              onChanged: (value) {
                setState(() {
                  smoking = value!;
                });
              },
            ),

            const SizedBox(height: 10),

            const Text(
              "Clinical Parameters",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),
            CustomTextField(
              controller: _ejectionFractionController,
              label: "Ejection Fraction (%)",
              icon: Icons.favorite,
              hint: "e.g. 35",
              keyboardType: TextInputType.number,
              validator: (value) => Validators.validateRequiredNumber(
                value,
                "Ejection Fraction",
              ),
            ),

            CustomTextField(
              controller: _serumCreatinineController,
              label: "Serum Creatinine (mg/dL)",
              icon: Icons.science,
              hint: "e.g. 1.2",
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validator: (value) => Validators.validateRequiredNumber(
                value,
                "Serum Creatinine",
              ),
            ),

            CustomTextField(
              controller: _serumSodiumController,
              label: "Serum Sodium (mEq/L)",
              icon: Icons.water_drop,
              hint: "e.g. 137",
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validator: (value) => Validators.validateRequiredNumber(
                value,
                "Serum Sodium",
              ),
            ),

            CustomTextField(
              controller: _plateletsController,
              label: "Platelets",
              icon: Icons.bloodtype,
              hint: "e.g. 263358",
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validator: (value) => Validators.validateRequiredNumber(
                value,
                "Platelets",
              ),
            ),

            CustomTextField(
              controller: _cpkController,
              label: "Creatinine Phosphokinase (CPK)",
              icon: Icons.biotech,
              hint: "e.g. 582",
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validator: (value) => Validators.validateRequiredNumber(
                value,
                "CPK",
              ),
            ),

            CustomTextField(
              controller: _heartRateController,
              label: "Heart Rate (bpm)",
              icon: Icons.monitor_heart,
              hint: "e.g. 72",
              keyboardType: TextInputType.number,
              validator: Validators.validateHeartRate,
            ),

            CustomTextField(
              controller: _followUpController,
              label: "Follow-up Days",
              icon: Icons.calendar_today,
              hint: "e.g. 120",
              keyboardType: TextInputType.number,
              validator: (value) => Validators.validateRequiredNumber(
                value,
                "Follow-up Days",
              ),
            ),

            const SizedBox(height: 25),
            CustomButton(
              text: "Predict Heart Failure Risk",
              icon: Icons.favorite,
              onPressed: _predict,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}