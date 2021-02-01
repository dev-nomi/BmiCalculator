import 'dart:math';

class BMIBrain{
  final int weight;
  final int height;
  double _bmi;


  BMIBrain({this.height,this.weight});

  String getBMI(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getStatus(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getStatement(){
    if(_bmi>=25){
      return 'You have higher than normal body weight.Try to exercise more.';
    }
    else if(_bmi>18.5){
      return 'You have the normal body weight.Good job!';
    }
    else{
      return 'You have a lower than normal body weight.You can eat a bit more';
    }
  }



}