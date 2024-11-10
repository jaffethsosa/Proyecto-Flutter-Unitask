import 'package:flutter/material.dart';
import 'package:app_fluter_unitask/domian/service/notice_service.dart';
import 'package:app_fluter_unitask/domian/model/notice.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: FutureBuilder<List<Notice>>(
          future: NoticeService().getAllNotice(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            final List<Notice>? notices = snapshot.data;

            if (notices == null || notices.isEmpty) {
              return const Center(child: Text('No hay noticias disponibles.'));
            }

            return ListView.builder(
              itemCount: notices.length,
              itemBuilder: (BuildContext context, int index) {
                final notice = notices[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text(
                      notice.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(notice.summary),
                        const SizedBox(height: 4),
                        Text('Autor: ${notice.author}'),
                        Text('Fecha: ${notice.date}'),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
