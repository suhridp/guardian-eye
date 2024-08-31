import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email id',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone No.',
                border: OutlineInputBorder(),
              ),
            ),
            // Add more fields as per the design
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Save changes logic here
              },
              child: Text('Save Changes'),
              style: ElevatedButton.styleFrom(
                //  primary: Colors.purple,
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
