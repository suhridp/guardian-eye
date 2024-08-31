import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/icon/app_icon.png',
                width: 120,
                height: 160,
              ),
              SizedBox(width: 10),
              Text(
                'GuardianEye',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              SizedBox(height: 40.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email/Phone No.',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Not an existing user? Register'),
                style: TextButton.styleFrom(
                    //   primary: Colors.purple,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
