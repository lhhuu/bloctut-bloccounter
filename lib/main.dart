import 'package:appcounter2/CounterBloc.dart';
import 'package:appcounter2/CounterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  return runApp(App()) ;
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter demo app",
      home: BlocProvider<CounterBloc>(
        builder: (context) => CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}
