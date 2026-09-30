import 'package:flutter/material.dart';
import 'package:socialminiapp/screen/Contact_Screen.dart';
import 'package:socialminiapp/screen/Gellary_screen.dart';
import'package:socialminiapp/screen/Home_screen.dart';
import 'package:socialminiapp/screen/call_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool ison=false;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text("Home Screen",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
        actions: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 40,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GellaryScreen()));
    }, icon: Icon(Icons.photo)),
              SizedBox(width:40,),
              IconButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactScreen()));
    }, icon:Icon (Icons.contact_mail),
              ),
              SizedBox(height:50,),
              IconButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CallScreen()));
    }, icon: Icon(Icons.call)),
            ],
          )
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4,
          color:Colors.white10,
            shadowColor:Colors.black38,
            margin:EdgeInsets.all(13),
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(16),
              side:BorderSide(color:Colors.grey,width: 1)
            ),
            child:Padding(padding: EdgeInsets.all(13),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:AssetImage("assets/image/img1.jpg"),
                      )
                      ],
                  ),
                  SizedBox(height:10,),
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [Text("Name:  Muhammad Rayyan",style:TextStyle(fontSize: 23,fontWeight:FontWeight.bold,),),
                      Text("Developer: Flutter Developer",style:TextStyle(fontSize: 23,fontWeight:FontWeight.bold,),),
                      Text("            Skills: Flutter,Firebase,"
                          "C++,OOP",style:TextStyle(fontSize: 23,fontWeight:FontWeight.bold,),),
                      Text("About me:I am a Software Engineering Student in abdul wali khan univercity of mardan.Now My #rd semester is Start ",style:TextStyle(fontSize: 23,),),

                    ],
                  ),
                  SizedBox(height:25,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                     IconButton(onPressed: (){
                       setState(() {
                         ison=!ison;
                       });
                     }, icon: Icon(ison?Icons.favorite:Icons.favorite_border,color:ison?Colors.red:Colors.black,),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.share),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment),)
                    ],
                  ),
                ],
              ),
            ),

        ),
      ),
    );
  }
}
