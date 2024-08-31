import 'package:flutter/material.dart';
import '../models/blog_post.dart';
import '../services/blog_service.dart';

class NewBlogPostPage extends StatelessWidget {
  final BlogService blogService;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  NewBlogPostPage({super.key, required this.blogService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('New Blog Post'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration:const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: contentController,
              decoration:const InputDecoration(labelText: 'Content'),
              maxLines: 10,
            ),
            const SizedBox(height: 20),
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
              style: ElevatedButton.styleFrom(
               // primary: Colors.purple,
                padding:const EdgeInsets.symmetric(vertical: 15),
                textStyle:const TextStyle(fontSize: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child:const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
