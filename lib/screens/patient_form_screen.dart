import 'package:flutter/material.dart';

class PatientFormScreen extends StatelessWidget {
  const PatientFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patient Details"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Age",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Blood Pressure",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.monitor_heart),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Heart Rate",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.favorite),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Serum Creatinine",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Ejection Fraction",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 30),

            SizedBox(
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Predict",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}