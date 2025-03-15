import 'package:flutter/material.dart';

class DetailDosen extends StatelessWidget {

  final Map<String,dynamic> itemMovie;
  const DetailDosen(this.itemMovie,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemMovie['nama']),
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(itemMovie['gambar'], fit: BoxFit.cover,width: double.infinity,height: 350,),
            ),
            SizedBox(height: 20,),
            Text(itemMovie['NIDN'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text(itemMovie['nama'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text(itemMovie['email'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            
            

          ],
        ),

      ),
      ),
    );
  }
}