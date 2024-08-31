import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/icon/app_icon.png',
                width: 120,
                height: 160,
              ),
              const SizedBox(width: 10),
              const Text(
                'GuardianEye',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 40.0),
              /* Text(
                'Register as User',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),*/
              const SizedBox(height: 40.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email/Phone No.',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Register logic here
                },
                style: ElevatedButton.styleFrom(
                  //primary: Colors.purple,
                  padding:const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle:const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child:const Text('Register'),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: TextButton.styleFrom(
                    // primary: Colors.purple,
                    ),
                child:const Text('Existing user? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
