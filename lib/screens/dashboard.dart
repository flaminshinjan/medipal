import 'package:flutter/material.dart';
import 'package:medipal/components/healthcard.dart';
import 'package:medipal/components/metricscard.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/profilepic.png'), // Replace with the actual path to your profile picture
                radius: 20,
              ),
              SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sanaya",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Patient ID: 33446647376",
                    style: TextStyle(
                        fontSize: 10, color: Color.fromARGB(255, 76, 76, 76)),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Implement search functionality
                },
              ),
            ],
          ),
        ),
        body: Container(
          child: const SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  HealthCard(),
                  Row(
                    children: [
                      MetricsCard(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
