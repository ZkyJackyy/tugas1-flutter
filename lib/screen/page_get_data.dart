import 'package:flutter/material.dart';

class PageGetData extends StatelessWidget{
  final int index;
  const PageGetData(this.index, {super.key});
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('get data list ke $index'),
      ),
      body: Center(
        child: Text('Detail berita ke $index'),
      ),
    );
    
  }
}