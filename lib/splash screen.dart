import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xoo/Home%20Layout.dart';

import 'name of 2 player.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(right:20,top: 40.0,left: 20.0),
              child: Text(
                'TIC TAC TOE',
                style: GoogleFonts.pressStart2p(
                  fontSize: 25,
                  letterSpacing: 2,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: AvatarGlow(
                  glowColor: Colors.blue,
                  endRadius: 100.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Material(     // Replace this child with your own
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      child: Image.asset(
                        'assets/images/splash1.png',
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      radius: 50.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 30),
              child: MaterialButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => pageNamefor2player(),), (route) => false);

              },child: ClipRRect(
                borderRadius: BorderRadius.circular(20),

                child: Container(
                  height: 42,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                        ' PLAY GAME' ,
                      style: GoogleFonts.pressStart2p(
                        fontSize: 18,
                        letterSpacing: 2,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
/*
            GestureDetector(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyStatefulWidget(),), (route) => false);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0,right: 35,bottom: 50),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 42,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        ' PLAY GAME',
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
              DropdownButton<String>(
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black

                                  ),
                                  items: items
                                      .map((e) => DropdownMenuItem<String>(
                                            child: Text('$e',
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 15,
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white)),
                                            value: e,
                                          ))
                                      .toList(),
                                  onTap: () {},
                                  dropdownColor: Colors.black,
                                  onChanged: (value) {
                                    XO_cubit.get(context).numberOfPlayer(value!);
                                  },
                                  value: XO_cubit.get(context).dropdownValue,
                                ),
            ),

 */
