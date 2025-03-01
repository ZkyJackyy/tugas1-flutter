import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:latihan1/screen/page_halamandua.dart';

class PageSimpleLogin extends StatefulWidget {
  @override
  State<PageSimpleLogin> createState() => _PageSimpleLoginState();
}

TextEditingController etusername = new TextEditingController();
TextEditingController etpassword = new TextEditingController();

String nUsername = '';
String nPassword = '';

class _PageSimpleLoginState extends State<PageSimpleLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Simple Login'),
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'form login User',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: etusername,
              decoration: InputDecoration(hintText: 'input username'),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: etpassword,
              obscureText: true,
              decoration: InputDecoration(hintText: 'input password'),
            ),
            SizedBox(height: 10),

            MaterialButton(
              onPressed: () {
                setState(() {
                  nUsername = etusername.text;
                  nPassword = etpassword.text;

                  print("username : " + nUsername + " password : " + nPassword);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageHalamandua(nUsername,nPassword,),
                    ),
                  );
                  
                });
                showToast('username : ' + nUsername + ' password : ' + nPassword,
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Login'),
            ),
          ],
        )),
    );
  }
}
