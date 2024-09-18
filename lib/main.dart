import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktokton/provide.dart';
import 'package:tiktokton/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Start()
    );
  }
}

class MyHomePage extends StatefulWidget {


  String p1;
  String p2;
   MyHomePage({super.key, required this.p1, required this.p2});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<List<String>> a = [
    ['', '', ''],
    ['', '', ''],
    ['', '', '']
  ];
  int x = 0;
  String b = '';
  String currentPlayer = 'X';
  // void cheak() {
  //   setState(() {
  //     for (int i = 0; i < 3; i++) {
  //       if (a[0][i] == a[1][i]) {
  //         if (a[1][i] == a[2][i]) {
  //           if (a[1][i] == 'X') {
  //             b = '${widget.p1} win';
  //           } else if (a[1][i] == 'O') {
  //             b = '${widget.p1} win';
  //           }
  //         }
  //       } else if (a[i][0] == a[i][1]) {
  //         if (a[i][1] == a[i][2]) {
  //           if (a[i][2] == 'X') {
  //             b = '${widget.p1} win';
  //           } else if (a[i][2] == 'O') {
  //             b = '${widget.p1} win';
  //           }
  //         }
  //       } else if (a[2][0] == a[1][1]) {
  //         if (a[1][1] == a[0][2]) {
  //           if (a[1][1] == 'X') {
  //             b = '${widget.p1} win';
  //           } else if (a[1][1] == 'O') {
  //             b = '${widget.p1} win';
  //           }
  //         }
  //       } else if (a[0][0] == a[1][1]) {
  //         if (a[1][1] == a[2][2]) {
  //           if (a[1][1] == 'X') {
  //             b = '${widget.p1} win';
  //           } else if (a[1][1] == 'O') {
  //             b = '${widget.p1} win';
  //           }
  //         }
  //       }
  //     }
  //   });
  //   if (b != '') {
  //     showResultDialog();
  //   }
  // }
  void cheak() {
  setState(() {
    // Check for winners
    for (int i = 0; i < 3; i++) {
      // Check columns
      if (a[0][i] == a[1][i] && a[1][i] == a[2][i] && a[0][i] != '') {
        if (a[0][i] == 'X') {
          b = '${widget.p1} wins';
        } else if (a[0][i] == 'O') {
          b = '${widget.p2} wins';
        }
      }

      // Check rows
      if (a[i][0] == a[i][1] && a[i][1] == a[i][2] && a[i][0] != '') {
        if (a[i][0] == 'X') {
          b = '${widget.p1} wins';
        } else if (a[i][0] == 'O') {
          b = '${widget.p2} wins';
        }
      }
    }

    // Check diagonals
    if ((a[0][0] == a[1][1] && a[1][1] == a[2][2] && a[0][0] != '') ||
        (a[0][2] == a[1][1] && a[1][1] == a[2][0] && a[0][2] != '')) {
      if (a[1][1] == 'X') {
        b = '${widget.p1} wins';
      } else if (a[1][1] == 'O') {
        b = '${widget.p2} wins';
      }
    }
  });

  // Check for draw
  bool isDraw = true;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (a[i][j] == '') {
        isDraw = false;
        break;
      }
    }
    if (!isDraw) break;
  }

  if (isDraw && b == '') {
    b = "It's a draw!";
  }

  // Show the result dialog if there's a winner or a draw
  if (b != '') {
    showResultDialog();
  }
}


  void showResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tic Tac toe'), // Optional title
          content: Text('$b'), // Message content
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  a = [
                    ['', '', ''],
                    ['', '', ''],
                    ['', '', '']
                  ];
                  b = '';
                });
                Navigator.pop(context);
              },
              child: Text('play again'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Color.fromARGB(255, 111, 179, 235),Color.fromARGB(255, 80, 162, 230),],begin: Alignment.topLeft,end: Alignment.bottomCenter,)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tic-Tac-Toe',style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 3,spreadRadius: 3,offset: Offset(0, 5))]),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 430,height: 450,
            child:  
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 for (int i = 0; i < 3; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //cont(a[0]),
                  for (int j = 0; j < 3; j++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (a[i][j] == '') {
                            a[i][j] = currentPlayer;
        
                            currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
                          }
                        });
                        cheak();
                      },
                      child: Container(
        
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.fromBorderSide(BorderSide(color: Colors.grey ))
          
                        ),
                        child: Center(
                          child: Text(
                            // tapProvider.board[i][j],
                            a[i][j],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: a[i][j]=='X' ? Colors.red : Colors.green,
                              fontSize: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],)
         
             ,
            ),
           
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  a = [
                    ['', '', ''],
                    ['', '', ''],
                    ['', '', '']
                  ];
                  b = '';
                });
                Navigator.pop(context);
              },
              child: Center(
                    child: Text(
                  'Resate',
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                )),
              
            
            )
          ],
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

//  Container(
//                 height: 50,
//                 width: 500,
//                 decoration: BoxDecoration(
//                     gradient:
//                         LinearGradient(colors: [Colors.black, Colors.black])),
//                 child: Center(
//                     child: Text(
//                   b,
//                   style: TextStyle(color: Colors.blue),
//                 )),
//               )