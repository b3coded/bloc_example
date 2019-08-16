import 'package:bloc_example/increment/increment-controller.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class IncrementWidget extends StatefulWidget {
  @override
  _IncrementWidgetState createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final IncrementController bloc =
        BlocProvider.getBloc<IncrementController>();

    return Scaffold(
        appBar: AppBar(
          title: Text("Bloc"),
        ),
        body: Center(
            child: StreamBuilder(
                stream: bloc.outCounter,
                initialData: 0,
                builder: (BuildContext ctx, AsyncSnapshot snap) {
                  return Text('Cliques: ${snap.data}',
                      style: Theme.of(context).textTheme.display1);
                })),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            bloc.increment();
          }
        ));
  }
}
