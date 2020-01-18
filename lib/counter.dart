import 'package:mobx/mobx.dart';

class Counter{
  Counter(){
    increment = Action(_increment);
  }

  final value = Observable(0);

  Action increment;

  _increment(){
    value.value++;
  }

}