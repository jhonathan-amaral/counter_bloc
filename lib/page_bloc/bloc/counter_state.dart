part of 'counter_bloc.dart';

abstract class CounterState {
  //estados da nossa aplicação
  final int counter;
  const CounterState(this.counter);
}

class CounterInitialState extends CounterState {
  //classe de estado inicial da aplicação
  CounterInitialState() : super(0);
}

class CounterStateDate extends CounterState {
  //classe de atualização de estado
  CounterStateDate(super.counter);
}
