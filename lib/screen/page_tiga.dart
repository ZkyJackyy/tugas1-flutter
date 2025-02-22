import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget{
  const PageTiga({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page tiga'),
        backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone_android,
                    size: 50,
                    color: const Color.fromARGB(255, 37, 186, 255),

                  ),
                  Text("mobile")
                  
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.radar,
                    size: 50,
                    color: const Color.fromARGB(255, 28, 207, 22),

                  ),
                  Text("radar")
                  
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    size: 50,
                    color: const Color.fromARGB(255, 0, 0, 0),

                  ),
                  Text("phone")
                  
                ],
              )
            ]
          )
          ),
    );
  }
}