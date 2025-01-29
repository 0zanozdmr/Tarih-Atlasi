import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center( // Center ile tüm içeriği ortalayacağız
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Logoyu yukarıda konumlandır
            crossAxisAlignment: CrossAxisAlignment.center, // Tüm öğeleri ortala
            children: [
              // Logo ekleme
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 16), // Logo ile metin alanları arasında boşluk
              // Ad Soyad TextField
              TextField(
                decoration: InputDecoration(
                  hintText: "Ad Soyad",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 16),
              // E-Posta TextField
              TextField(
                decoration: InputDecoration(
                  hintText: "E-Posta",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16),
              // Şifre TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 16),
              // Kayıt Ol butonu
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent, // Temanın birincil rengi
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary, width: 2), // Kenarlık rengi
                ),
                child: TextButton(
                  onPressed: () {
                    context.go("/loading");
                  },
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary, // Temanın "onPrimary" rengi
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              // Giriş Yap butonu
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent, // Şeffaf arka plan
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary, width: 2), // Kenarlık rengi
                ),
                child: TextButton(
                  onPressed: () {
                    context.push("/login");
                  },
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary, // Temanın "onSecondary" rengi
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}