
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xoo/styles/icon_broken.dart';

import '../styles/constant.dart';
import 'name of 2 player.dart';

class home extends StatefulWidget {
  final String ?player1;
  final String ?player2;
   final String? type;

  home({
    this.player1,
    this.player2,
     this.type,
  });
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {

  // list تعبر عن رقم كل صندوق
    late bool istrue=widget.type=='X'?true:false;//يعبر عن ال x or o
    late bool X_o=widget.type=='X'?true:false;
    bool turn=true;
 List<String>display=
 [
   '', '', '', '', '', '', '', '', '',
 ];
  int player1Score=0;  //total score
 int player2Score=0;   //total score
 int fillBox=0;//بيعد البوكس الي موجوده عشان لو محدش فاز اقدر استخدمه ك شرط


 @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[800],
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => pageNamefor2player(),) );
              }, icon: Icon(IconBroken.Arrow___Left_Square),iconSize: 45,color: Colors.white,),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only( right: 20.0,left: 20.0,),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Expanded(
                          child: Column(
                            children:
                            [
                              Text(widget.player1!,
                                style: mystyle.copyWith(letterSpacing:0.1),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,


                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(' ${player1Score} ',
                                style: mystyle,

                              ),
                              SizedBox(
                                height: 20,
                              ),

                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white
                                  ),
                                ),
                                child: Center(child: Text('${X_o?'X':'O'}',style: mystyle.copyWith(fontSize:15 ),)),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Text(
                              'vs',
                            style: mystyle2.copyWith(fontSize: 30,color: Colors.white,),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children:
                            [

                              Text(widget.player2!,
                                style: mystyle.copyWith(letterSpacing: 0),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,

                              ),
                              SizedBox(
                                height: 20,
                              ),

                              Text(' ${player2Score} ',
                                style: GoogleFonts.pressStart2p(
                                  fontSize: 15,
                                  letterSpacing: 2,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),

                              ),
                              SizedBox(
                                height: 20,
                              ),

                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white
                                  ),
                                ),
                                  child: Center(child: Text('${!X_o?'X':'O'}',style: mystyle.copyWith(fontSize:15 ),)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        children: [
                          Row (
                            children: [
                              GestureDetector(
                                 onTap: (){
                                   setState(() {
                                     if(display[0]=='') {
                                       istrue? display[0] = istrue ? 'x' : 'o':display[0] = !istrue ? 'o' : 'x';
                                       turn=!turn;
                                       fillBox++;
                                       istrue = !istrue;
                                       checkWinner();// فانكشن ف حاله الفوز
                                     }
                                   });


                                 },
                                child: Container(
                                  width: 100,
                                    decoration: BoxDecoration(

                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        right: BorderSide(color: Colors.grey[500]!),
                                        bottom:  BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[0]}',
                                        style: mystyle2
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[1]=='') {
                                      istrue? display[1] = istrue ? 'x' : 'o':display[1] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      fillBox++;
                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(

                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        right: BorderSide(color: Colors.grey[500]!),
                                        bottom:  BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[1]}',
                                          style: mystyle2
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[2]=='') {
                                      istrue? display[2] = istrue ? 'x' : 'o':display[2] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      fillBox++;
                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(

                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        bottom:  BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[2]}',
                                          style: mystyle2
                                      )),
                              ),

                              )],
                          ),
                          Row (
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[3]=='') {
                                      istrue? display[3] = istrue ? 'x' : 'o':display[3] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      fillBox++;
                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        right: BorderSide(color: Colors.grey[500]!),
                                        bottom:  BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[3]}',
                                          style: mystyle2
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[4]=='') {
                                      istrue? display[4] = istrue ? 'x' : 'o':display[4] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(

                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        right: BorderSide(color: Colors.grey[500]!),
                                        bottom:  BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[4]}',
                                          style: mystyle2
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[5]=='') {
                                      istrue? display[5] = istrue ? 'x' : 'o':display[5] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      fillBox++;
                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        bottom:  BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[5]}',
                                          style: mystyle2
                                      ),
                                    )),
                              ),

                            ],
                          ),
                          Row (
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[6]=='') {
                                      istrue? display[6] = istrue ? 'x' : 'o':display[6] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      fillBox++;
                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(

                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        right: BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[6]}',
                                          style: mystyle2
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[7]=='') {
                                      istrue? display[7] = istrue ? 'x' : 'o':display[7] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      fillBox++;
                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(

                                      shape: BoxShape.rectangle,
                                      border:Border(
                                        right: BorderSide(color: Colors.grey[500]!),

                                      ),
                                    ),
                                    child: Center(
                                      child: Text('${display[7]}',
                                          style: mystyle2
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(display[8]=='') {
                                      istrue? display[8] = istrue ? 'x' : 'o':display[8] = !istrue ? 'o' : 'x';
                                      turn=!turn;

                                      fillBox++;
                                      istrue = !istrue;
                                      checkWinner();
                                    }
                                  });
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Center(
                                      child: Text('${display[8]}',
                                          style: mystyle2
                                      ),
                                    )),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Text('Turn: ${turn?widget.player1:widget.player2}',style: GoogleFonts.pressStart2p(
                        fontSize:15,
                        letterSpacing: 1,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          player1Score=0;
                          player2Score=0;
                          clear();

                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0,left: 10,top: 40),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 40,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                ' Restart',
                                style: GoogleFonts.pressStart2p(
                                  fontSize: 20,
                                  letterSpacing: 2,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Text('TIC  TAC  TOE',
                        style: GoogleFonts.pressStart2p(
                          fontSize:15,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
  //////////////////////////////////////////////////////////////////////////////
  void checkWinner()
  {
    if(display[0]==display[1]&&display[0]==display[2]&&display[0]!='')
      {
        showWinner(display[0]);

      }
   else if(display[3]==display[4]&&display[3]==display[5]&&display[3]!='')
    {
      showWinner(display[3]);

    }
    else if(display[6]==display[7]&&display[6]==display[8]&&display[6]!='')
    {
      showWinner(display[6]);

    }

    else if(display[0]==display[3]&&display[0]==display[6]&&display[0]!='')
    {
      showWinner(display[0]);

    }

    else if(display[1]==display[4]&&display[1]==display[7]&&display[1]!='')
    {
      showWinner(display[1]);

    }

    else if(display[2]==display[5]&&display[2]==display[8]&&display[2]!='')
    {
      showWinner(display[2]);

    }
    else if(display[6]==display[4]&&display[6]==display[2]&&display[6]!='')
    {
      showWinner(display[6]);

    }
    else if(display[0]==display[4]&&display[0]==display[8]&&display[0]!='')
    {
      showWinner(display[0]);
    }
    else if(fillBox==8)
      {
        turn=true;
        clear();
      }
    else
      return null;

  }
  //////////////////////////////////////////////////////////////////////////////
  void showWinner(winner)
  {
   showDialog(context: context, builder: (context)
     {
       return AlertDialog(

         title: Row(
           children: [
             Text('WINNER is  '+winner,style: mystyle2.copyWith(fontSize: 22)
             ),
             SizedBox(width: 12,),
             Image(image: AssetImage('assets/images/party1.png'),
               height: 55,
               width: 55,
             ),
           ],
         ),
         actions:
         [
           MaterialButton(onPressed: (){
             clear();
             Navigator.pop(context);

           },child: Text('PLAY Again !',style: mystyle2.copyWith(fontSize: 20),),)
         ],
       );
     },
     barrierDismissible: false,
   );
   if(winner=='o')
     {
       turn=true;
       if(!X_o)
       {
         player1Score++;

       }else
         {
           player2Score++;

         }
     }

   else if(winner=='x')
     {
       turn=true;

       if(X_o)
         {
           player1Score++;

         }
       else
         {
           player2Score++;

         }

     }
  }
  ///////////////////////////////////////////////////////////////////////////////
 
  void clear()
  {
   setState(() {
     for(int i=0;i<9;i++)
     {
       display[i]='';
     }
      istrue=widget.type=='X'?true:false; //يعبر عن ال x or o


   });
   fillBox=0;

  }
  //////////////////////////////////////////////////////////////////////////////
  /*
  void shownotWinner()
 {
   showDialog(context: context, builder: (context)
   {
     return AlertDialog(

       title: Text('Draw',style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 20
       ),

       ),
       actions:
       [
         MaterialButton(onPressed: (){
           clear();
           Navigator.pop(context);

         },child: Text('PLAY Again !', style: mystyle2.copyWith(fontSize: 20),),)
       ],
     );
   },
     barrierDismissible: false,
   );

 }
   */
}


