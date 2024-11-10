import 'package:flutter/material.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuraciones'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Cambiar idioma'),
            subtitle: const Text('Seleccionar idioma de la aplicación'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notificaciones'),
            subtitle: const Text('Activar o desactivar las notificaciones'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: const Text('Modo oscuro/claro'),
            subtitle: const Text('Cambiar entre modo claro y oscuro'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
