import 'package:flutter/material.dart';

class CheckSafetyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This would ideally show the result of the safety check
    bool isRouteSafe =
        false; // Example data; in a real app, this would be dynamic

    return Scaffold(
      appBar: AppBar(
        title: Text('Check Safety'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              isRouteSafe
                  ? 'This Route is Safe for Journey!'
                  : 'This Route is Not Safe for Journey!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isRouteSafe ? Colors.green : Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to suggest a safer route or recheck
              },
              child: Text('Suggest Safer Route'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                textStyle: TextStyle(fontSize: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
