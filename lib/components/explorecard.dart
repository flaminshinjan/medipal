import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final String line1;
  final String line2;
  final String line3;
  final String imagePath;

  ExploreCard({
    required this.line1,
    required this.line2,
    required this.line3,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 3,
        color: Colors.white,
        margin: EdgeInsets.all(1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      line1,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(line2, style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 4),
                    Text(line3, style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              imagePath,
              height: 115,
              width: 115,
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    );
  }
}
