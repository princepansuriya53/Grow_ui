import 'package:flutter/material.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Padding Demo'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double paddingValue;

            // Customize padding based on screen width
            if (constraints.maxWidth >= 50) {
              paddingValue = 32.0; // For larger screens (e.g., tablets)
            } else {
              paddingValue = 16.0; // For smaller screens (e.g., phones)
            }

            return Padding(
              padding: EdgeInsets.all(paddingValue),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: Center(
                  child: Text(
                    'Responsive Padding',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
