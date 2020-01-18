import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => "$nome $sobrenome";

  @action
  changeName(String newName) {
    nome = newName;
  }

  @action
  changeLastName(String newLastName) {
    sobrenome = newLastName;
  }
}
