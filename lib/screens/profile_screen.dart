import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/constants.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(26),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(26),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    child: Text(
                      "Profil Fotoğrafı",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Ozan Özdemir"),
                    subtitle: Text("Ad Soyad"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("oozan8257@gmail.com"),
                    subtitle: Text("E-posta"),
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.clock_fill),
                    title: Text("Hesabı oluşturulduğu tarih"),
                    subtitle: Text("Tarih"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 44),
          FilledButton.icon(
            onPressed: () {
              context.go("/");
            },
            icon: Icon(Icons.logout),
            label: Text("Hesaptan Çıkış Yap"),
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          if (context.canPop())
            TextButton.icon(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back),
              label: Text("Geri Dön"),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}