import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xoo/styles/constant.dart';
import 'name of 2 player.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
=======
      backgroundColor: Colors.grey[900],
>>>>>>> e2994f1171580a8199e7698d6af0deb3967d40cb
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(right:20,top: 40.0,left: 20.0),
              child: Text(
                'TIC TAC TOE',
                style:mystyle.copyWith(
                    fontSize: 25,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: AvatarGlow(
                  glowColor: Colors.blue,
                  endRadius: 100.0,
<<<<<<< HEAD
                  duration: Duration(milliseconds: 5000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 500),
=======
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
>>>>>>> e2994f1171580a8199e7698d6af0deb3967d40cb
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
<<<<<<< HEAD
            Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30,bottom: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 50,
                          child: MaterialButton(
=======

                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30,bottom: 30),
                      child: Container(

                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white
                        ),
                        width: double.infinity,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: MaterialButton(
                            highlightColor: Colors.white,
                            splashColor: Colors.blueGrey,
>>>>>>> e2994f1171580a8199e7698d6af0deb3967d40cb
                            onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => pageNamefor2player(),), (route) => false);
                            },
                            child: Text(
                              ' PLAY GAME',
                              style:mystyle.copyWith(
                                color: Colors.black,
                                fontSize: 20
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),


          ],
        ),
      ),
    );
  }
}
