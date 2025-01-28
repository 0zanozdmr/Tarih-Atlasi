import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/constants.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/suggested_action_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa', style: Theme.of(context).textTheme.headlineMedium),
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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  CupertinoIcons.person_circle,
                  size: 50,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              accountName: Text("Hoşgeldiniz"),
              accountEmail: null,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Ana Sayfa'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.search),
              title: Text('Aratma'),
              onTap: () => context.push("/search"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.search),
              title: Text('İndirilenler'),
              onTap: () => context.push("/download"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.search),
              title: Text('Kaydedilenler'),
              onTap: () => context.push("/saved"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person),
              title: Text('Profil'),
              onTap: () => context.push("/profile"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text('Ayarlar'),
              onTap: () => context.push("/settings"),
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Çıkış Yap'),
              onTap: () => context.go("/"),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: EdgeInsets.all(24),
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Gölgenin konumu
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarihte Bugün Ne Oldu',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Bugün tarihte yaşanan önemli olaylar.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    // Diğer SuggestedActionCard'lar
                    SuggestedActionCard(
                      icon: Icons.history,
                      title: "Son Aramalar",
                      subtitle: "Geçmiş aramalarınızı görüntüleyin",
                      onTap: () => context.push("/search"),
                    ),
                    SizedBox(height: 16),
                    SuggestedActionCard(
                      icon: Icons.settings,
                      title: "Ayarlar",
                      subtitle: "Uygulama ayarlarını özelleştirin",
                      onTap: () => context.push("/settings"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
