import 'package:app_fluter_unitask/presentation/router/main_router.dart';
import 'package:app_fluter_unitask/presentation/screen/home/widgets/main_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const MainMenu(),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              const Text(
                'Bienvenido a Unitask',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black , 
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Unitask es una aplicación diseñada para ayudarte a organizar y gestionar tus tareas de manera eficiente. '
                'Aquí puedes agregar, ver y controlar el progreso de todas tus tareas pendientes.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, 
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Image.asset(
                  'assets/image/book.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
