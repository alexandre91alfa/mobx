import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter.dart';

class Home extends StatelessWidget {
  final dados = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: dados.changeName,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Sobrenome'),
                onChanged: dados.changeLastName,
              ),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Text('Nome Completo: ${dados.nome} ${dados.sobrenome}');
              })
            ],
          ),
        ),
      ),
    );
  }
}
