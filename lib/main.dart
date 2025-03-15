import 'package:flutter/material.dart';
import 'package:latihan1/screen/latihan_form/form_dosen.dart';
import 'package:latihan1/screen/latihan_form/grid_view_dosen.dart';
import 'package:latihan1/screen/navbar/page_grid_view.dart';
import 'package:latihan1/screen/navbar/page_tab_bar.dart';
import 'package:latihan1/screen/page_cache_image.dart';
import 'package:latihan1/screen/page_dua.dart';
import 'package:latihan1/screen/page_empat.dart';
import 'package:latihan1/screen/page_gambar.dart';
import 'package:latihan1/screen/page_listdata.dart';
import 'package:latihan1/screen/page_notifikasi.dart';
import 'package:latihan1/screen/page_satu.dart';
import 'package:latihan1/screen/page_simple_login.dart';
import 'package:latihan1/screen/page_tiga.dart';
import 'package:latihan1/screen/page_url.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projek 1 mobile lanjutan', 
        style: TextStyle(color: const Color.fromARGB(255, 184, 184, 184)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("selamat datang di projek 1 Flutter"),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSatu()));
            },
            //pindah ke page1
            
            color: Colors.orange,
            child: Text('page 1', style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            ),
            
            Padding(padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageDua()));},
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.amber,
            clipBehavior: Clip.antiAlias,
            child: Text('page 2',
            style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            )
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageTiga()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page 3',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageEmpat()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page 4',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageGambar()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page gambar',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageUrl()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page Url',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageCacheImage()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page Cache img',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageNotifikasi()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page Notifikasi',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageListdata()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page List Data',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSimpleLogin()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('Page login',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageTabBar()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('page Tab',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViewDosen()));
            },
              //ini untuk pindah page
              color: Colors.orange,
              child: Text('page form dosen',
                style: TextStyle(fontSize: 14, color: Colors.white ),
              ),
            ),

            
            ],
        )
      ),
    );
  }
}
