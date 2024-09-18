// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:tiktokton/provide.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
   
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});


//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
  

//   List<List<String>> a=[['a','b','c'],['d','a','a'],['a','a','a']];
//   int x=0;
//   String b='result';
//  void cheak(){
  
//   setState(() {
//   for (int i = 0; i < 3; i++){
//          if (a[0][i]==a[1][i]) {
//           if (a[1][i]==a[2][i]) {
//             if (a[1][i]=='X') {
//               b=' kalkidan win';
//             }else if (a[1][i]=='O') {
//               b='solomno win';
//             }
            
//           }
           
//          }
//       else if (a[i][0]==a[i][1]) {
//           if (a[i][1]==a[i][2]) {
//             if (a[i][2]=='X') {
//               b=' kalkidan win';
//             }else if (a[i][2]=='O') {
//               b='mahlet win';
//             }
            
//           }
           
//          }
//          else if (a[2][0]==a[1][1]) {
//           if (a[1][1]==a[0][2]) {
//             if (a[1][1]=='X') {
//               b=' kalkidan win';
//             }else if (a[1][1]=='O') {
//               b='mahlet win';
//             }
            
//           }
           
//          }   else if (a[0][0]==a[1][1]) {
//           if (a[1][1]==a[2][2]) {
//             if (a[1][1]=='X') {
//              b=' kalkidan win';
//             }else if (a[1][1]=='O') {
//              b='mahlet win';
//             }
            
//           }
           
//          }
    
//   }  
//   });
//  }


//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
      
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,

//         title: Text(widget.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 80),
//         child: Column(children: [
//            Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
//             //cont(a[0]),
//               for (int i = 0; i < 3; i++)
//              GestureDetector(onTap: () {
//       setState(() {
//        x++;
      
//       if (x<10) {
        
//        if (x%2==0) {
//          a[0][i]='O';
//        }else{
//          a[0][i]='X';
//        }
//       }else{
//          a[0][i]=' ';
//       }
         
      
//       });
//       cheak();
//      },child: Container(height: 100,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle,gradient: LinearGradient(colors: [Colors.black,Colors.black])),child: Center(child: Text( a[0][i],style: TextStyle(color: Colors.blue),)),)),
//             const SizedBox(width: 15,),
      
          
//         ],),
//           SizedBox(height: 15,),
//            Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
//             //cont(a[0]),
//               for (int i = 0; i < 3; i++)
//              GestureDetector(onTap: () {
//       setState(() {
//        x++;
      
//       if (x<10) {
        
//        if (x%2==0) {
//          a[1][i]='O';
//        }else{
//          a[1][i]='X';
//        }
//       }else{
//          a[1][i]=' ';
//       }
         
      
//       });
//       cheak();
//      },child: Container(height: 100,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle,gradient: LinearGradient(colors: [Colors.black,Colors.black])),child: Center(child: Text( a[1][i],style: TextStyle(color: Colors.blue),)),)),
//             const SizedBox(width: 15,),
      
          
//         ],),
//            SizedBox(height: 15,),
//             Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
//             //cont(a[0]),
//               for (int i = 0; i < 3; i++)
//              GestureDetector(onTap: () {
//       setState(() {
//        x++;
      
//      if (x<10) {
        
//        if (x%2==0) {
//          a[2][i]='O';
//        }else{
//          a[2][i]='X';
//        }
//       }else{
//          a[2][i]=' ';
//       }
      
//       });
//       cheak();
//      },child: Container(height: 100,width: 100,decoration: BoxDecoration(shape: BoxShape.rectangle,gradient: LinearGradient(colors: [Colors.black,Colors.black])),child: Center(child: Text( a[2][i],style: TextStyle(color: Colors.blue),)),)),
//             const SizedBox(width: 15,),
      
          
//         ],),
//         SizedBox(height: 15,),
//         Container(height: 50,width: 500,decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Colors.black])),child: Center(child: Text( b,style: TextStyle(color: Colors.blue),)),)
//         ],
//         ),
//       )
//        // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:provider/provider.dart';
// import 'package:tiktokton/provide.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

  
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => TapProvider(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
         
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const HomePage(title: 'tik_tak_ton')
//       ),
//     );
//   }
// }


// class HomePage extends StatefulWidget {
//   const HomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
//             child: Consumer<TapProvider>(builder: (context, tapProvider, child) {
//               return Column(
//               //  crossAxisAlignment:CrossAxisAlignment.center ,
//                // mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   for (int i = 0; i < 3; i++)
//                     Row(
//                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         for (int j = 0; j < 3; j++)
//                           GestureDetector(
//                             onTap: () {
//                               context.read<TapProvider>().makeMove(i, j);
//                               context.read<TapProvider>().checkWinner();
//                             },
//                             child: Container(
//                               height: 100,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 border: Border.all(color: Colors.black),
//                                 color: Colors.white,
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   tapProvider.board[i][j],
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 24,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                   const SizedBox(height: 20),
//                   Container(
//                     height: 50,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                     ),
//                     child: Center(
//                       child: Text(
//                         tapProvider.statusMessage,
//                         style: TextStyle(color: Colors.white, fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             }),
//           ),
//         ],
//       ),
//     );
//   }
// }