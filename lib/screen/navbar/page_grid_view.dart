import 'package:flutter/material.dart';
import 'package:latihan1/screen/navbar/page_detail_movie.dart';

class PageGridView extends StatefulWidget{
  const PageGridView({super.key});

  @override
  State<PageGridView> createState() => _PageGridViewState();

}

class _PageGridViewState extends State<PageGridView> {
  //data list movie
  List<Map<String,dynamic>> Listmovies = [
    {"judul":"ciao alberto","gambar":"gambar/movie1.jpg", "harga": 450000},
    {"judul":"the simon","gambar":"gambar/movie2.png", "harga": 250000},
    {"judul":"jungle crois","gambar":"gambar/movie3.jpg", "harga": 500000},
    {"judul":"Home Alone","gambar":"gambar/movie4.jpg", "harga": 800000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Navigator.push(context, MaterialPageRoute(builder: (_) => PageDetailMovie(Listmovies[index])));
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
                        Text(Listmovies[index]["judul"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("Rp. ${Listmovies[index]["harga"]}"),

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