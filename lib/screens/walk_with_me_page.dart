import 'package:flutter/material.dart';
import 'dart:async';

class WalkWithMePage extends StatefulWidget {
  @override
  _WalkWithMePageState createState() => _WalkWithMePageState();
}

class _WalkWithMePageState extends State<WalkWithMePage> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();
  String _userPin = "";
  Timer? _securityTimer;

  @override
  void dispose() {
    _securityTimer?.cancel(); // Cancel the timer when the page is disposed
    _fromController.dispose();
    _toController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  void _startWalk() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Set Security Pin'),
          content: TextField(
            controller: _pinController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter a unique security pin',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (_pinController.text.isNotEmpty) {
                  setState(() {
                    _userPin = _pinController.text;
                  });
                  Navigator.of(context).pop();
                  _startSecurityCheck(); // Start the security pin check
                }
              },
              child: Text('Start'),
            ),
          ],
        );
      },
    );
  }

  void _startSecurityCheck() {
    _securityTimer = Timer.periodic(Duration(minutes: 3), (timer) {
      _promptSecurityPin(); // Prompt for security pin every 3 minutes
    });
  }

  void _promptSecurityPin() {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing the dialog without input
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Security Check'),
          content: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter your security pin',
            ),
            onChanged: (value) {
              if (value == _userPin) {
                Navigator.of(context).pop(); // Close the dialog if pin matches
              }
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (_pinController.text != _userPin) {
                  _triggerDangerAlert(); // Trigger danger alert if the pin is incorrect
                } else {
                  Navigator.of(context)
                      .pop(); // Close the dialog if pin matches
                }
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void _triggerDangerAlert() {
    // Logic to handle the danger alert (e.g., send notifications, alert emergency contacts)
    print('User in danger! Sending alert...');
    // Here you would implement actual alert logic, like sending an SOS message
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Walk with Me'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _fromController,
              decoration: InputDecoration(
                labelText: 'From',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _toController,
              decoration: InputDecoration(
                labelText: 'To',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startWalk,
              child: Text('Start Walk'),
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
