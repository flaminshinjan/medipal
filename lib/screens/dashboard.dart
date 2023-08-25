import 'package:flutter/material.dart';
import 'package:medipal/components/explorecard.dart';
import 'package:medipal/components/healthcard.dart';
import 'package:medipal/components/metricscard.dart';
import 'package:medipal/components/repcard.dart';

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  HealthCard(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MetricsCard(),
                      Column(
                        children: [
                          ReportCard(
                            color: Color(0xFFFFE49E),
                            imagePath: 'assets/graph.png',
                            text: 'Lab Reports',
                          ),
                          SizedBox(height: 7.5),
                          ReportCard(
                            color: Color(0xFFAAB4E6),
                            imagePath: 'assets/clock.png',
                            text: 'Appointments',
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 700,
                    width: 368,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6C0C0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          ExploreCard(
                              line1: "How to avoid heart attack?",
                              line2: "By Dr. A. Manikaran",
                              line3: "Read More",
                              imagePath: 'assets/demostory.png'),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
