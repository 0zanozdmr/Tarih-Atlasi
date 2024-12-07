import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,245,222,179),
      // AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255,245,222,179),
        title: const Text('Ana Sayfa',
        style: TextStyle(
         color: Color.fromARGB(250, 139, 69, 19),
        ),
       ),

        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              color: Colors.white,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_circle,
                    size: 100,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.profile_circled),
              title: const Text('Profil'),
              onTap: () {
                context.go('/profile');
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.archivebox),
              title: const Text('Kaydedilenler'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
             leading: const Icon(CupertinoIcons.arrow_down_to_line_alt),
             title: const Text('İndirilenler'),
             onTap: () {
              Navigator.pop(context);
             },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Text('Ana Sayfa İçeriği',
                style: TextStyle(
                  color: Color.fromARGB(250, 139, 69, 19),
                ),
              ),
            ),
          ),
        ],
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Aratma',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black ,
        backgroundColor: Color.fromARGB(255,245,222,179) ,
        onTap: (index) {
          // Navigasyon işlemleri buraya gelecek
        },
      ),
    );
  }
}