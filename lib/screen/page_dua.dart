import 'package:flutter/material.dart';

class PageDua extends StatelessWidget{
  const PageDua({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page dua'),
        backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                size: 50,
                color: Colors.deepPurpleAccent,
                ),

              Icon(
                Icons.settings,
                size: 50,
                color: const Color.fromARGB(255, 114, 116, 115),
              ),
              Icon(
                Icons.info,
                size: 50,
                color: Colors.blue,
              )
            ],
              )
          )
          );
  }
}