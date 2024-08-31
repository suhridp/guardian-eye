import '../models/blog_post.dart';

class BlogService {
  final List<BlogPost> _blogPosts = [];

  List<BlogPost> getAllPosts() {
    return _blogPosts;
  }

  void addPost(BlogPost post) {
    _blogPosts.add(post);
  }
}
