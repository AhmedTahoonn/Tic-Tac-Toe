
import 'package:flutter/material.dart';
import 'package:xoo/styles/constant.dart';

import 'Play_Screen.dart';

class pageNamefor2player extends StatefulWidget {
  @override
  State<pageNamefor2player> createState() => _pageNamefor2playerState();
}

class _pageNamefor2playerState extends State<pageNamefor2player> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var name2Controller = TextEditingController();
  var select_x = true;


  @override
  Widget build(BuildContext context) {
    nameController.text = 'Player 1' ;
    name2Controller.text = 'Player 2';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/two.png'),
                      height: 150,
                      width: 150,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Container(
                        height: 70,
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/user.png'),
                              height: 33,
                              width: 26,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextFormField(
                                style: mystyle2.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                                controller: nameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'YOU MUST ENTER YOUR NAME';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10,
                                      color: Colors.red),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  labelStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                  ),
                                  fillColor: Colors.blueGrey,
                                  filled: true,
                                  hintText: 'Enter NAME OF PLAYER 1',
                                  helperStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 12,
                                      color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_x = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              border: select_x
                                  ? Border.all(
                                      color: Colors.blueGrey,
                                      width: 3,
                                    )
                                  : null,
                            ),
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Text(
                                'X',
                                style: mystyle2.copyWith(
                                    fontSize: 85, color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_x = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              border: !select_x
                                  ? Border.all(
                                      color: Colors.blueGrey,
                                      width: 3,
                                    )
                                  : null,
                            ),
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Text(
                                'O',
                                style: mystyle2.copyWith(
                                    fontSize: 85, color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Container(
                        height: 70,
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/user.png'),
                              height: 30,
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextFormField(
                                style: mystyle2.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                                controller: name2Controller,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'YOU MUST ENTER YOUR NAME';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10,
                                      color: Colors.red),
                                  labelStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                  ),
                                  fillColor: Colors.blueGrey,
                                  filled: true,
                                  hintText: 'Enter NAME OF PLAYER 2',
                                  helperStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 12,
                                      color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_x = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              border: !select_x
                                  ? Border.all(
                                      color: Colors.blueGrey,
                                      width: 3,
                                    )
                                  : null,
                            ),
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Text(
                                'X',
                                style: mystyle2.copyWith(
                                    fontSize: 85, color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_x = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              border: select_x
                                  ? Border.all(
                                      color: Colors.blueGrey,
                                      width: 3,
                                    )
                                  : null,
                            ),
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Text(
                                'O',
                                style: mystyle2.copyWith(
                                    fontSize: 85, color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.blueGrey,
                          child: MaterialButton(

                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>playPage
                                          (
                                              player1: nameController.text,
                                              player2: name2Controller.text,
                                              type: select_x ? 'X' : 'O',
                                            )

                                    ),
                                    (route) => false);
                              }
                            },
                            child: Text(
                              'Start',
                              style: mystyle2.copyWith(
                                  fontSize: 25, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
/*
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30,),
                      child: Container(

                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blueGrey
                        ),
                        width: double.infinity,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: MaterialButton(
                            highlightColor: Colors.blueGrey,
                            splashColor: Colors.white,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => home(
                                  player1: nameController.text,
                                  player2: name2Controller.text,
                                  type: select_x?'X':'O',
                                ),));
                              }
                            },
                            child: Text(
                              'Start',
                              style: GoogleFonts.aBeeZee(fontSize: 25,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),

 */
