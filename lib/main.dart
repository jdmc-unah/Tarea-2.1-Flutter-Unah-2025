import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page_jdmc/views/home.dart';
import 'package:login_page_jdmc/views/login.dart';
import 'package:login_page_jdmc/views/register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: '/login',
        routes: [
          GoRoute(
            name: 'login',
            path: '/login',
            builder: (context, state) => Login(),
            routes: [
              GoRoute(
                name: 'register',
                path: '/register',
                builder: (context, state) => Register(),
              ),
            ],
          ),

          GoRoute(
            name: 'home',
            path: '/home',
            builder: (context, state) => Homepage(),
          ),
        ],
      ),
    );
  }
}
