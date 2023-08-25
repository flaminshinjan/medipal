import 'package:flutter/material.dart';

class MetricsCard extends StatelessWidget {
  const MetricsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
              height: 180,
              width: 195,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF11152A),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Metrics Log",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "55kg",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Text(
                            "155cms",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          MaterialButton(
                            height: 10,
                            onPressed: () {},
                            child: Text(
                              "+ Add Data",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
        // Add spacing between the containers
      ],
    );
  }
}
