import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('politeknik negeri padang'),
      ),
      body: Center(
        child: Image.asset('gambar/img.jpg'),
      ),
    );
  }
}