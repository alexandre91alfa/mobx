import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Couter = CounterBase with _$Counter;
abstract class CounterBase with Store {

  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @action
  changeName(String newName){
    nome = newName;
  }

  @action
  changeLastName(String newLastName){
    nome = newLastName;
  }


  
}