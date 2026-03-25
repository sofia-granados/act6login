import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Fila 1: Título con color naranja ff7b00
              const Text("Chofy's Pets", 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFFFF7B00))),
              
              // Fila 2: Subtítulo
              const Text("Cuidando a tu mejor amigo", 
                style: TextStyle(fontSize: 18, color: Colors.grey)),

              // Fila 3: Imagen ACTUALIZADA
              Image.network(
                'https://raw.githubusercontent.com/sofia-granados/imagenes-para-flutter-6j-11-febrero-2026/refs/heads/main/Gemini_Generated_Image_2rm72w2rm72w2rm7.png',
                height: 250,
              ),

              // Fila 4: Botón Login con color naranja ff8800
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color(0xFFFF8800),
                  foregroundColor: Colors.white,
                ),
                child: const Text("INGRESAR"),
              ),

              // Fila 5: Botón Sign Up con borde naranja ff9500
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  side: const BorderSide(color: Color(0xFFFF9500)),
                ),
                child: const Text("REGISTRARSE", style: TextStyle(color: Color(0xFFFF9500))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}