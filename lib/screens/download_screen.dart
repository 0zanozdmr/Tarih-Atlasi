import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İndirilenler', style: Theme.of(context).textTheme.headlineMedium),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // İndirilen öğe sayısı
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: Icon(Icons.file_download), // İndirilen dosya simgesi
                      title: Text('İndirilen ${index + 1}'), // İndirilen öğe adı
                      subtitle: Text('Dosya boyutu: ${index * 10 + 5} MB'), // Dosya boyutu
                      trailing: IconButton(
                        icon: Icon(Icons.delete), // Silme simgesi
                        onPressed: () {
                          // Silme işlemi
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('İndirilen ${index + 1} silindi.'),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}