import 'package:blocpattern/ui/screens/counter/bloc/bloc.dart';
import 'package:blocpattern/ui/screens/counter/bloc/events.dart';
import 'package:blocpattern/ui/screens/counter/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BlocProvider<CounterBloc>(
      create: (BuildContext context) => CounterBloc(),
      child: BlocConsumer<CounterBloc, CounterStates>(

        listener: (BuildContext context, CounterStates state) {

          if(state is SuccessCounterState) {
            print('success counter bloc : ${state.type}');
          }

        },
        builder: (BuildContext context, CounterStates state) {
          int count = CounterBloc.get(context).count;

          return Scaffold(
            appBar: AppBar(
              title: Text(
                  'Counter BLoc'
              ),
              backgroundColor: Colors.teal,
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      CounterBloc.get(context).add(IncrementCounterValue());
                    },
                    child: Icon(
                        Icons.add
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CounterBloc.get(context).add(DecrementCounterValue());
                    },
                    child: Icon(
                        Icons.remove
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
