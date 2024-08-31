import 'package:flutter/material.dart';
import '../models/blog_post.dart';
import '../services/blog_service.dart';
import '../widgets/blog_post_card.dart';

class BlogPage extends StatelessWidget {
  final BlogService blogService = BlogService();

  @override
  Widget build(BuildContext context) {
    List<BlogPost> posts = blogService.getAllPosts();

    return Scaffold(
      appBar: AppBar(
        title: Text('Community Blog'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return BlogPostCard(post: posts[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/new-blog-post');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
