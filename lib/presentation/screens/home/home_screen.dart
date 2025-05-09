import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Google Gemini')),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(Icons.person_outline),
            ),
            title: const Text('Prompt basico a Gemini'),
            subtitle: const Text('Usando un modelo flash'),
            onTap: () => context.push('/basic-prompt'),
          ),

          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.history_outlined),
            ),
            title: const Text('Chat conversacional'),
            subtitle: const Text('Mantener contexto de mensajes'),
            onTap: () => context.push('/history-chat'),
          ),

          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.image_outlined),
            ),
            title: const Text('generacion de imagenes'),
            subtitle: const Text('Crea y edita imagenes con AI'),
            onTap: () => context.push('/image-playground'),
          ),
        ],
      ),
    );
  }
}
