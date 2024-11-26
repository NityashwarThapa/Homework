import 'package:flutter/material.dart';
import 'package:first_assignment/view/simple_interest.dart'; // Import Simple Interest page
import 'package:first_assignment/view/area_of_circle.dart'; // Import Area of Circle page
import 'package:first_assignment/view/arithmetic.dart'; // Import Arithmetic page

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Simple Interest Box
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SimpleInterestView()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 200,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Simple Interest',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            // Area of Circle Box
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AreaOfCircleView()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 200,
                height: 100,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Area of Circle',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            // Arithmetic Box
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArithmeticScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 200,
                height: 100,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'Arithmetic Operations',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
