import 'package:flutter/material.dart';
import 'package:tiktokton/main.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    TextEditingController lapcontroller=TextEditingController();
    TextEditingController laps=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
     
      body: Container(
       decoration: BoxDecoration(gradient: LinearGradient(colors: [Color.fromARGB(255, 111, 179, 235),Color.fromARGB(255, 80, 162, 230),],begin: Alignment.topLeft,end: Alignment.bottomCenter,)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tic-Tac-Toe',style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold),),
            SizedBox(height: 30),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: TextFormField(controller:lapcontroller,decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),labelText: 'Player 1',labelStyle: TextStyle(color: Colors.black),),),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: TextFormField(controller:laps,decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),labelText: 'Player 2',labelStyle: TextStyle(color: Colors.black),),),
           ),
           SizedBox(height: 40,),
           Center(
             child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(p1: lapcontroller.text,p2: laps.text,)));
              
             }, child: Text('Play',style: TextStyle(color: Colors.blue))),
           ),
          ],
        ),
      ),
    );
  }
}