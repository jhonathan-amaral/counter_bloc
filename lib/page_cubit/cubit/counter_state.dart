// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  //estado do nosso app
  final int counter;
  //construtor que preceisa receber nosso estado
  const CounterState(this.counter);

  //utilizando para ele ficar verficando a instancia do nosso counter e altera apenas
  //o estado
  @override
  List<Object?> get props => [counter];
}

//classe com o estado inicial do nosso app
class CounterInitial extends CounterState {
  const CounterInitial() : super(0);
}

//classe que ira receber a atualização de estado
class CounterStateDate extends CounterState {
  const CounterStateDate(super.counter);
}
