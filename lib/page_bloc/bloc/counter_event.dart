part of 'counter_bloc.dart';

abstract class CounterEvent {}

//eventos para nosso bloc
class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}
