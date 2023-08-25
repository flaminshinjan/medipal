import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String text;

  TopicCard({
    required this.text,
  });
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
            height: 362.5,
            width: 368,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFAAB4E6),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today’s Record",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Your Streaks: 🔥🔥🔥",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 25),
                  Image(
                    image: AssetImage('assets/compchart.png'),
                    height: 240,
                    width: 350,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
