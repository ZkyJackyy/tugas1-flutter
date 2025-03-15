import 'package:flutter/material.dart';

class PageDetailMovie extends StatelessWidget {

  final Map<String,dynamic> itemMovie;
  const PageDetailMovie(this.itemMovie,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemMovie['judul']),
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(itemMovie['gambar'], fit: BoxFit.cover,width: double.infinity,height: 350,),
            ),
            SizedBox(height: 20,),
            Text(itemMovie['judul'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Rp. ${itemMovie['harga']}",
            style: TextStyle(color: Colors.red),
            ),
            

          ],
        ),

      ),
      ),
    );
  }
}