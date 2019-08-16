import 'package:flutter/material.dart';
import 'package:bloc_example/increment/increment_widget.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import 'increment/increment-controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        blocs: [
          Bloc((i) => IncrementController()),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: IncrementWidget(),
    ));
  }
}
