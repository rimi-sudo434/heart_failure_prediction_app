import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prediction History"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.favorite, color: Colors.white),
              ),
              title: const Text("Patient #1"),
              subtitle: const Text("Low Risk"),
              trailing: const Text("95%"),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.favorite, color: Colors.white),
              ),
              title: const Text("Patient #2"),
              subtitle: const Text("Medium Risk"),
              trailing: const Text("60%"),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.favorite, color: Colors.white),
              ),
              title: const Text("Patient #3"),
              subtitle: const Text("High Risk"),
              trailing: const Text("20%"),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}