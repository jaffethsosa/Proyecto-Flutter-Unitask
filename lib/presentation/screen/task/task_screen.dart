import 'package:app_fluter_unitask/domian/model/task.dart';
import 'package:app_fluter_unitask/domian/service/task_service.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tareas'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
            child: FutureBuilder<List<Task>>(
          future: TaskService().getAllTask(),
          builder: (context, snapshot) {
            final List<Task>? tasks = snapshot.data;
            if (tasks != null) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  final task = tasks[index];
                  return ListTile(
                    title: Text(task.title), 
                    subtitle: Text(task.description), 
                    leading: task.isCompleted
                        ? const Icon(Icons.check, color: Colors.green)
                        : const Icon(Icons.do_not_disturb_alt_rounded, color: Colors.red),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Estado'),
                        Text(task.isCompleted ? 'Completada' : 'Pendiente'),
                      ],
                    ),
                  );
                },
              );
            } else {
              return const CircularProgressIndicator(); // Muestra un indicador de carga mientras se obtienen las tareas
            }
          },
        )),
    );
  }
}
