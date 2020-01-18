import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mob_x/counter.dart';

class Home extends StatelessWidget {

  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.vertical_align_center),
            onPressed: counter.decrement,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              name: 'counter',
              builder: (_){
                return Text(
                  "${counter.count}"
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: (){
          counter.increment();
        },
      ),
    );
  }
}