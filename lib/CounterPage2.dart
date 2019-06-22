import 'package:appcounter2/CounterBloc.dart';
import 'package:appcounter2/CounterEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var myBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('page counter 2'),
      ),
      body: BlocBuilder<CounterEvent, int>(
        bloc: myBloc,
        builder: (context, count) {
          return Center(
            child: Text('$count'),
          );
        },
      ),
      floatingActionButton: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: (){myBloc.dispatch(CounterEvent.increment);},
              child: Icon(Icons.add)),
          FloatingActionButton(
              onPressed: (){myBloc.dispatch(CounterEvent.decrement);},
              child: Icon(Icons.remove))
        ],
      ),
    );
  }
}
