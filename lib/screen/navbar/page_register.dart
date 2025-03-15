
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  TextEditingController fullname = new TextEditingController();
  TextEditingController username= new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController tanggallahir = new TextEditingController();
  TextEditingController password= new TextEditingController();
  String? valAgama, valjk, inputForm;
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
                  labelinput: "fullname", controller: fullname, hintText: "zacky", textInputType: TextInputType.name
                  ),
                  CostummInput(
                  labelinput: "username", controller: username, hintText: "zacky", textInputType: TextInputType.text
                  ),
                  CostummInput(
                  labelinput: "email", controller: email, hintText: "@gmail.com", textInputType: TextInputType.name
                  ),
                  CostummInput(
                  labelinput: "tgl lahir", controller: tanggallahir, hintText: "yy/mm/dd", textInputType: TextInputType.datetime,
                  onTap: (){
                    selectDate();
                  },
                  ),
                  CostummInput(
                  labelinput: "Password", controller: password, hintText: "***", textInputType: TextInputType.name,
                  obscureText: true,
                  ),
                  SizedBox(height: 10,),
                  Text("Agama", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 5,),
                  
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: DropdownButton(
                      value: valAgama,
                      underline: Container(),
                      isExpanded: true,
                    
                      items:
                      ["islam",
                      "kristen",
                      "hindu"].map((e) {
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
                          valAgama = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Jenis Kelamin", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      CostumRadio(vlue: "laki-laki", groupValue: valjk.toString(), onChange: (val){
                        setState(() {
                          valjk = val;
                        });
                      }),

                      CostumRadio(vlue: "perempuan", groupValue: valjk.toString(), onChange: (val){
                        setState(() {
                          valjk = val;
                        });
                      }),
                    ]
                  ),
                  SizedBox(height: 10,),
                  CostumButton(bgcolor: Colors.blueGrey, labelButton: "save", onPressed: (){
                    setState(() {
                      if(_formKey.currentState!.validate()){
                        if (valAgama != null && valjk != null){
                          inputForm = "fullname : ${fullname.text},"
                          " username : ${username.text}, "
                          " email : ${email.text},"
                          " tgl lahir : ${tanggallahir.text},"
                          " password : ${password.text}, "
                          "agama : ${valAgama.toString()},"
                          " jenis kelamin : ${valjk.toString()}";

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
        ),
      ),
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
    
class CostumRadio extends StatelessWidget{

  final String vlue;
  final String groupValue;
  final ValueChanged<String> onChange;

  const CostumRadio({super.key, required this.vlue, required this.groupValue, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RadioListTile(
        value: "value", groupValue: groupValue, onChanged: (val){
          if(val != null){
            onChange(val);
          }
        },
        title: Text(vlue),
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