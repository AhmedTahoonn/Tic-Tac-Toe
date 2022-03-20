import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xoo/provider/states.dart';


class XO_cubit extends Cubit<XOStates> {
  XO_cubit() : super(initial_State());

  static XO_cubit get(context) => BlocProvider.of(context);
  String dropdownValue = 'Two';
  void numberOfPlayer(String value)
  {
   if(value=='Two')
     {
       dropdownValue=value;
       emit(number2ofplayer());
     }
   else{
     dropdownValue=value;

     emit(number4ofplayer());
   }
  }




}