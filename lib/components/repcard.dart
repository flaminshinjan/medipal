import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final String imagePath;
  final Color color;
  final VoidCallback? onTap;
  final String text;

  ReportCard({
    required this.imagePath,
    required this.color,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: InkWell(
        child: Container(
            height: 83,
            width: 152,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 14),
                  Image.asset(
                    imagePath,
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
