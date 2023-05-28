import 'package:flutter/material.dart';

class tictoe extends StatefulWidget {
  @override
  State<tictoe> createState() => _tictoeState();
}

class _tictoeState extends State<tictoe> {
  var mean = {'0': '', '1': 'X', '2': 'O'};

  int isx = 1;


  List<List<int>> wow = [[0, 0, 0], [0, 0, 0], [0, 0, 0]];
  int x = 1;
  int o = 2;

var whoos="NOT YET";
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    if (checkwin()==true) {
      whoos= whos(isx);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('TIC TAC GAME'),backgroundColor: Colors.purple[900],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Player ${mean['$isx']} will play ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
          SizedBox(height: 15,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(decoration: BoxDecoration(border: Border.all(),),
                child: Column(mainAxisSize: MainAxisSize.min,

                  children: [


                    Container(decoration: BoxDecoration(border: Border.all()),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[0][0] = 1;
                              isx = o;
                            }
                            else {
                              wow[0][0] = 2;
                              isx = x;
                            }

                            print(wow[0][0]);
                          });
                        }, child: Text('${mean['${wow[0][0]}']}'),),
                        SizedBox(width: 15,),
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[0][1] = 1;
                              isx = o;
                            }
                            else {
                              wow[0][1] = 2;
                              isx = x;
                            }

                            print(wow[0][1]);
                          });
                        }, child: Text('${mean['${wow[0][1]}']}'),),
                        SizedBox(width: 15,),
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[0][2] = 1;
                              isx = o;
                            }
                            else {
                              wow[0][2] = 2;
                              isx = x;
                            }

                            print(wow[0][2]);
                          });
                        }, child: Text('${mean['${wow[0][2]}']}'),),
                      ],),
                    ), SizedBox(height: 20,),

                    Container(decoration: BoxDecoration(border: Border.all()),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[1][0] = 1;
                              isx = o;
                            }
                            else {
                              wow[1][0] = 2;
                              isx = x;
                            }

                            print(wow[1][0]);
                          });
                        }, child: Text('${mean['${wow[1][0]}']}'),),
                        SizedBox(width: 15,),
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[1][1] = 1;
                              isx = o;
                            }
                            else {
                              wow[1][1] = 2;
                              isx = x;
                            }

                            print(wow[1][1]);
                          });
                        }, child: Text('${mean['${wow[1][1]}']}'),),
                        SizedBox(width: 15,),
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[1][2] = 1;
                              isx = o;
                            }
                            else {
                              wow[1][2] = 2;
                              isx = x;
                            }

                            print(wow[1][2]);
                          });
                        }, child: Text('${mean['${wow[1][2]}']}'),),
                      ],),
                    ), SizedBox(height: 20,),
                    Container(decoration: BoxDecoration(border: Border.all()),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[2][0] = 1;
                              isx = o;
                            }
                            else {
                              wow[2][0] = 2;
                              isx = x;
                            }

                            print(wow[2][0]);
                          });
                        }, child: Text('${mean['${wow[2][0]}']}'),),
                        SizedBox(width: 15,),
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[2][1] = 1;
                              isx = o;
                            }
                            else {
                              wow[2][1] = 2;
                              isx = x;
                            }

                            print(wow[2][1]);
                          });
                        }, child: Text('${mean['${wow[2][1]}']}'),),
                        SizedBox(width: 15,),
                        MaterialButton(onPressed: () {
                          setState(() {
                            if (isx == x) {
                              wow[2][2] = 1;
                              isx = o;
                            }
                            else {
                              wow[2][2] = 2;
                              isx = x;
                            }

                            print(wow[2][2]);
                          });
                        }, child: Text('${mean['${wow[2][2]}']}')),
                      ],),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Text(' ${whoos}  ',style: TextStyle(color: Colors.white),),
        SizedBox(height: 20,),
        Container(width: 120 ,decoration: BoxDecoration(color: Colors.cyan[400]),
          child: MaterialButton(onPressed: (){

            setState(() {
              Rest();
            });

          },child: Text('NEW GAME' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), ),),
        )],
      ),
    backgroundColor: Colors.purple,);
  }

  bool checkwin() {

      for (int row = 0; row < 3; row++) {

        if (wow[row][0] == wow[row][1] &&
            wow[row][1] == wow[row][2] &&
            wow[row][0] != 0) {
          return true;
        }
      }
      for (int col = 0; col < 3; col++) {
        if (wow[0][col] == wow[1][col] &&
            wow[1][col] == wow[2][col] &&
            wow[0][col] != 0) {
          return true;
        }
      }
      if (wow[0][0] == wow[1][1] &&
          wow[1][1] == wow[2][2] &&
          wow[0][0] != 0) {
        return true;
      }

      if (wow[0][2] == wow[1][1] &&
          wow[1][1] == wow[2][0] &&
          wow[0][2] != 0) {
        return true;
      }

  return false;}

  String whos (int we){
    var  winner ="NOT YET" ;
    if (we==1){
      winner="THE PLAYER (O) IS THE WINNER ";
    }if (we==2) {
      winner="THE PLAYER (X) IS THE WINNER ";
    }

    return winner;

  }
  void Rest (){


    for (int row = 0; row < 3; row++) {
      for (int colm = 0; colm < 3; colm++){

        wow[row][colm]=0;

      }



      }
    whoos="NOT YET";
    isx=1;
  }

}