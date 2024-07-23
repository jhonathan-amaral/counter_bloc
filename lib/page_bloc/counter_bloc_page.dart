import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //Recuperando valor passado pelo bloc
        BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              'Counter ${state.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  //passamos o evento que estamos esperando
                  context.read<CounterBloc>().add(CounterIncrement());
                },
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  //passamos o evento que estamos esperando
                  context.read<CounterBloc>().add(CounterDecrement());
                },
                icon: const Icon(Icons.remove)),
          ],
        )
      ]),
    );
  }
}
