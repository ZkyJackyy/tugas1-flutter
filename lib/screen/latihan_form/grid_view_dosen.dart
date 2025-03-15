import 'package:flutter/material.dart';
import 'package:latihan1/screen/latihan_form/detail_dosen.dart';

class GridViewDosen extends StatefulWidget {
  const GridViewDosen({super.key});

  @override
  State<GridViewDosen> createState() => _GridViewDosenState();
}

class _GridViewDosenState extends State<GridViewDosen> {

  List<Map<String,dynamic>> Listmovies = [
    {"NIDN":"00001","nama":"the simon","gambar":"gambar/d1.png", "email": "mzaki@gmail.com"},
    {"NIDN":"00002","nama":"the simon","gambar":"gambar/d2.png", "email": "mzaki@gmail.com"},
    {"NIDN":"00003","nama":"jungle crois","gambar":"gambar/d3.png", "email": "mzaki@gmail.com"},
    {"NIDN":"00004","nama":"Home Alone","gambar":"gambar/d4.png", "email": "mzaki@gmail.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),
      backgroundColor: Colors.blue,
      ),  

      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: Listmovies.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7),

          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailDosen(Listmovies[index])));
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Listmovies[index]["gambar"],fit: BoxFit.cover,),)
                      ), //menampilkan gambar
                  
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(9),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Text(Listmovies[index]["NIDN"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text(Listmovies[index]["nama"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text(Listmovies[index]["email"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        // Text("Rp. ${Listmovies[index]["harga"]}"),

                      ],
                    ),
                  )
                ],
              ),
            );
          }
          )
        ),
    );
  }
}