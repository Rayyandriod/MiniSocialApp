import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        title:Text("Contact us"),
      ),
      body:Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          SizedBox(height: 12,),
          TextField(
            controller:nameController,
            decoration:InputDecoration(
              labelText:"Enter Your name",
              hintText: "eg.Ali",
              border:OutlineInputBorder(),
              prefixIcon:Icon(Icons.drive_file_rename_outline),
            ),
            keyboardType:TextInputType.numberWithOptions(),
          ),
          SizedBox(height: 12,),
          TextField(
            controller:emailController,
            decoration:InputDecoration(
              labelText:"Enter Your email",
              hintText: "eg.abc@gmail.com",
              border:OutlineInputBorder(),
              prefixIcon:Icon(Icons.drive_file_rename_outline),
            ),
            keyboardType:TextInputType.numberWithOptions(),
          ),
          SizedBox(height:30,),
          Column(
            mainAxisAlignment:MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: (){
                String email=emailController.text.trim();
                String name=nameController.text.trim();
                if(email=="@"||email.isEmpty){
                  print("Email required");
                } if(name.isEmpty){
                  print("Name is required");
                }else{
                  return print("Submited");
                }
              }, child: Text("Submit")),
            ],
          )
        ],
      ),
    );
  }
}
