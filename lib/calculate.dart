import 'dart:math';

import 'package:flutter/cupertino.dart';
class calc{
  calc({@required this.height,@required this.weight});
  final int height;
  final int weight;
  double _bmi;
  double Calcbmi(){
    _bmi=weight/pow(height/100, 2);
    return _bmi;
  }
  String cat(){
    if(_bmi>=(25.0)){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
}
}