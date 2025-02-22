import 'package:flutter/material.dart';

class PageEmpat extends StatelessWidget{
  const PageEmpat({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Empat'),
        backgroundColor: const Color.fromARGB(255, 26, 121, 245),
        ),
        body: SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(200, (index){
              return Card(
                child: Center(
                  child: Text('List ke ${index}'),
                ),
              );
            }),
          ),
          ),
    );
  }
}