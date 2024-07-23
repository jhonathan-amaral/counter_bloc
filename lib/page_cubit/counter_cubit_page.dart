import 'package:counter_bloc/page_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //Recuperando valor passado pelo bloc
        BlocBuilder<CounterCubit, CounterState>(
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
                  context.read<CounterCubit>().increment();
                },
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  //passamos o evento que estamos esperando
                  context.read<CounterCubit>().decrement();
                },
                icon: const Icon(Icons.remove)),
          ],
        )
      ]),
    );
  }
}
