
import 'package:flutter/material.dart';


// class TapProvider with ChangeNotifier {
//   List<List<String>> board = [
//     ['', '', ''],
//     ['', '', ''],
//     ['', '', ''],
//   ];
//   String currentPlayer = 'X';
//   String statusMessage = 'Player X\'s turn';

//   void makeMove(int i, int j) {
//     if (board[i][j] == '') {
//       board[i][j] = currentPlayer;
//       currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
//       statusMessage = 'Player $currentPlayer\'s turn';
//       notifyListeners();
//     }
//   }

//   void checkWinner() {
//     // Add logic to check for a winner and update statusMessage accordingly
//     notifyListeners();
//   }
// }

// ignore: camel_case_types
class tap extends ChangeNotifier{
 List<List<String>> a=[['a','b','c'],['d','a','a'],['a','a','a']];
 int x=0;
   String b='result';
 void cheak(){

  for (int i = 0; i < 3; i++){
         if (a[0][i]==a[1][i]) {
          if (a[1][i]==a[2][i]) {
            if (a[1][i]=='X') {
              b=' player 1 win';
            }else if (a[1][i]=='O') {
              b='player 2 win';
            }
            
          }
           
         }
      else if (a[i][0]==a[i][1]) {
          if (a[i][1]==a[i][2]) {
            if (a[i][2]=='X') {
              b=' player 1 win';
            }else if (a[i][2]=='O') {
              b='player 2 win';
            }
            
          }
           
         }
         else if (a[2][0]==a[1][1]) {
          if (a[1][1]==a[0][2]) {
            if (a[1][1]=='X') {
              b=' player 1 win';
            }else if (a[1][1]=='O') {
              b='player 2 win';
            }
            
          }
           
         }   else if (a[0][0]==a[1][1]) {
          if (a[1][1]==a[2][2]) {
            if (a[1][1]=='X') {
             b=' player 1 win';
            }else if (a[1][1]=='O') {
             b='player 2 win';
            }
            
          }
           
         }
    
  }  
notifyListeners();
 }


void changes(int i, int j){
      x++;
      if (x<10) {
        
       if (x%2==0) {
         a[i][j]='O';
       }else{
         a[i][j]='X';
       }
      }else{
         a[i][j]=' ';
      }
      notifyListeners();
}

}