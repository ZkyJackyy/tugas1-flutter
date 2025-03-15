import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormDosen extends StatefulWidget {
  const FormDosen({super.key});

  @override
  State<FormDosen> createState() => _FormDosenState();
}

class _FormDosenState extends State<FormDosen> {

  TextEditingController nidn = new TextEditingController();
  TextEditingController nama= new TextEditingController();
  TextEditingController tanggallahir = new TextEditingController();
  TextEditingController alamat = new TextEditingController();
  String? valpendidikan, valstatus, inputForm;
  final _formKey = GlobalKey<FormState>();

  Future selectDate() async{
    DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1979),
      lastDate: DateTime(2045),
      initialDate: DateTime.now(),
    );
    if(pickDate != null) {
      tanggallahir.text = DateFormat("dd-MM-yyyy").format(pickDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Nav Bar", style: TextStyle(color: Colors.white),),
    ),

    body: Form(
      key: _formKey,
      child: Padding(
          padding: EdgeInsets.all(14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Form Register", style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10,),
                CostummInput(
                  labelinput: "nidn", controller: nidn, hintText: "000000", textInputType: TextInputType.name
                  ),
                  CostummInput(
                  labelinput: "nama", controller: nama, hintText: "zacky", textInputType: TextInputType.text
                  ),
                  CostummInput(
                  labelinput: "alamat", controller: alamat, hintText: "@gmail.com", textInputType: TextInputType.name
                  ),
                  CostummInput(
                  labelinput: "tgl lahir", controller: tanggallahir, hintText: "yy/mm/dd", textInputType: TextInputType.datetime,
                  onTap: (){
                    selectDate();
                  },
                  ),
                  // CostummInput(
                  // labelinput: "Password", controller: password, hintText: "***", textInputType: TextInputType.name,
                  // obscureText: true,
                  // ),
                  SizedBox(height: 10,),
                  Text("pendidikan", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 5,),
                  
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: DropdownButton(
                      value: valpendidikan,
                      underline: Container(),
                      isExpanded: true,
                    
                      items:
                      ["S1",
                      "S2",
                      "S3"].map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Padding(
                            padding : EdgeInsets.all(10),
                            child : Text(e),
                          )
                        );
                      }).toList(),
                      onChanged: (value){
                        setState(() {
                          valpendidikan = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("status", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      CostumeRadio(value: "menikah", groupValue: valstatus.toString(), onChange: (val){
                        setState(() {
                          valstatus = val;
                        });
                      }),

                      CostumeRadio(value: "single", groupValue: valstatus.toString(), onChange: (val){
                        setState(() {
                          valstatus = val;
                        });
                      }),
                    ]
                  ),
                  SizedBox(height: 10,),
                  CostumButton(bgcolor: Colors.blueGrey, labelButton: "save", onPressed: (){
                    setState(() {
                      if(_formKey.currentState!.validate()){
                        if (valpendidikan != null && valstatus != null){
                          inputForm = "nidn : ${nidn.text},"
                          " nama : ${nama.text}, "
                          " tgl lahir : ${tanggallahir.text},"
                          " alamat : ${alamat.text}, "
                          "pendidikan : ${valpendidikan.toString()},"
                          "satatus : ${valstatus.toString()}";

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(inputForm.toString()
                          )
                          )
                          );

                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("input tidak boleh kosong")));
                        }
                      }
                    });
                  }, 
                  lblcolor: Colors.white)

              ],
            ),
            ),
        ), ),

    );

    
  }
}


class CostummInput extends StatelessWidget {
  final String labelinput;
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final VoidCallback? onTap;


  const CostummInput({super.key, required this.labelinput, required this.controller, required this.hintText, required this.textInputType, this.obscureText = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: 10,),
                Text(labelinput, style: TextStyle(fontSize: 16),),
                SizedBox(height: 8,),
                TextFormField(
                  controller: controller,//mendapatkan input dari user
                  validator: (val){
                    return val!.isEmpty ? "input tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  keyboardType: textInputType,
                  obscureText: obscureText,
                  onTap: (){
                    onTap?.call();

                  },

                ),
              ],
            );

    
  }

}
    
class CostumeRadio extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<String> onChange;

  const CostumeRadio({super.key, required this.value, required this.groupValue, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RadioListTile(
        value: value ,
        groupValue:groupValue,
        onChanged:(val){
          if(val != null){
            onChange(val);
          }
        },
        title: Text(value),
      ),
    );
  }
}

class CostumButton extends StatelessWidget {
  final Color bgcolor;
  final String labelButton;
  final VoidCallback onPressed;
  final Color lblcolor;

  const CostumButton({super.key,required this.bgcolor, required this.labelButton, required this.onPressed, required this.lblcolor});

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(style: ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
      backgroundColor: bgcolor,
      ), onPressed: (){
        onPressed.call();
      },
       child: Text(
        labelButton, style: TextStyle(color: lblcolor),)
        );

    
  }
}