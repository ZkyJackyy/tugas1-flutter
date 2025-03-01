import 'package:flutter/material.dart';
import 'package:latihan1/screen/page_get_data.dart';

class PageListdata extends StatelessWidget{
  const PageListdata({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Page List Data'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('Judul berita $index'),
            subtitle: Text('Detail Berita $index'),
            onTap: (){
              // proses passing data
              //buat satu file untuk menampung data
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageGetData(index)));
            },
          );
        }),
    );
    
  }
}