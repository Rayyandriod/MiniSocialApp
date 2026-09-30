import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<String>name=["Ali","Sara","Khan","Salman"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title:Text("Call List"),
        centerTitle:true,
      ),
      body:ListView.builder(
        itemCount:name.length,
          itemBuilder:(context,index){
          return ListTile(
            leading: CircleAvatar(
              child: Text(name[index][0]),
            ),
            title:Text(name[index]),
            trailing:Icon(Icons.arrow_forward),
          );
        
      }),
    );
  }
}
