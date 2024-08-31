import 'package:flutter/material.dart';
import 'screens/loading_page.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/emergency_numbers_page.dart'; // Import the emergency numbers page
import 'screens/walk_with_me_page.dart'; // Import the Walk with Me page
import 'screens/check_safety_page.dart'; // Import the Check Safety page
import 'screens/safety_techniques_page.dart'; // Import the Safety Techniques page

import 'screens/register_page.dart';
import 'screens/blog_page.dart';
import 'screens/edit_profile_page.dart';
import 'screens/new_blog_post.dart';
import 'services/blog_service.dart';
import 'screens/splash_screen.dart'; // Import the splash screen

void main() {
  runApp(GuardianEyeApp());
}

class GuardianEyeApp extends StatelessWidget {
  final BlogService blogService = BlogService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GuardianEye',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/splash', // Set the splash screen as the initial route
      routes: {
        '/splash': (context) => SplashScreen(), // Splash screen route
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/blog': (context) => BlogPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/new-blog-post': (context) =>
            NewBlogPostPage(blogService: blogService),
        '/emergency-numbers': (context) =>
            EmergencyNumbersPage(), // Emergency Numbers route
        '/walk-with-me': (context) => WalkWithMePage(), // Walk with Me route
        '/check-safety': (context) => CheckSafetyPage(), // Check Safety route
        '/safety-techniques': (context) =>
            SafetyTechniquesPage(), // Safety Techniques route
      },
    );
  }
}
