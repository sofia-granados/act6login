import 'package:flutter/material.dart';
import 'mispantallas/bienvenidos.dart';
import 'mispantallas/login.dart';
import 'mispantallas/signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cohfy's Pets",
      theme: ThemeData(
        // Usamos el naranja principal ff8800 como base
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF8800)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenidos(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}