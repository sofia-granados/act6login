import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            children: [
              const Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFFF7B00))),
              const Text("Bienvenido de nuevo a Chofy's Pets", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 30),
              
              const TextField(decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder())),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder())
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: const StadiumBorder(),
                  backgroundColor: const Color(0xFFFF8800),
                  foregroundColor: Colors.white,
                ),
                child: const Text("Iniciar Sesión"),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿No tienes cuenta? "),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/signup'),
                    child: const Text("Registrate aquí", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFF9500))),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Image.network(
                'https://raw.githubusercontent.com/sofia-granados/imagenes-para-flutter-6j-11-febrero-2026/refs/heads/main/download%20(5).jpg',
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}