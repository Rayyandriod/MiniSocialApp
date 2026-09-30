import 'package:flutter/material.dart';

class GellaryScreen extends StatefulWidget {
  const GellaryScreen({super.key});

  @override
  State<GellaryScreen> createState() => _GellaryScreenState();
}

class _GellaryScreenState extends State<GellaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar(
  backgroundColor:Colors.green,
  title:Text("Gellary"),
  centerTitle:true,
),
      body:GridView(
        padding:EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing:10,
            crossAxisSpacing:10,
            childAspectRatio:1,
            maxCrossAxisExtent: 200),
      children: [
        Image.asset("assets/image/img1.jpg",fit:BoxFit.cover,),
        Image.asset("assets/image/img2.jpg",fit:BoxFit.cover,),
        Image.asset("assets/image/img1.jpg",fit:BoxFit.cover,),
        Image.asset("assets/image/img2.jpg",fit:BoxFit.cover,),
        Image.asset("assets/image/img1.jpg",fit:BoxFit.cover,),
        Image.asset("assets/image/img2.jpg",fit:BoxFit.cover,),
      ],
      ),
    );
  }
}
