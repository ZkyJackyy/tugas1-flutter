import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageHalamandua extends StatelessWidget{
  final String nUsername;
  final String nPassword;
  const PageHalamandua(this.nUsername, this.nPassword,{super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Page Home'),
      ),
      body: Center(
        child: Text('username $nUsername password $nPassword'),
        
      ),
    );
    
  }
}