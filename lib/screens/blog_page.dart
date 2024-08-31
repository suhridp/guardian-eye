import 'package:flutter/material.dart';
import '../models/blog_post.dart';
import '../services/blog_service.dart';
import '../widgets/blog_post_card.dart';

class BlogPage extends StatelessWidget {
  final BlogService blogService = BlogService();

  BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<BlogPost> posts = blogService.getAllPosts();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Blog'),
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
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
