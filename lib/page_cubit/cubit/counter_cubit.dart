import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  //nosso construtor recebe no super o estado inicial do nosso app
  CounterCubit() : super(CounterInitial());

//metodos de atualização de nossos estados na aplicação
  void increment() => emit(CounterStateDate(state.counter + 1));
  void decrement() => emit(CounterStateDate(state.counter - 1));
}
