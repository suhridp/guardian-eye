import 'package:flutter/material.dart';
import '../models/blog_post.dart';
import '../services/blog_service.dart';

class NewBlogPostPage extends StatelessWidget {
  final BlogService blogService;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  NewBlogPostPage({required this.blogService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Blog Post'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 10,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newPost = BlogPost(
                  title: titleController.text,
                  content: contentController.text,
                  date: DateTime.now(),
                );
                blogService.addPost(newPost);
                Navigator.pop(context);
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
               // primary: Colors.purple,
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
