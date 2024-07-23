import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  //recebe valor inicial
  CounterBloc() : super(CounterInitialState()) {
    //fica esperando nossos eventos
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }
  void _increment(CounterIncrement event, Emitter<CounterState> emit) {
    //recuperamos o valor anterior e emitimos um novo valor
    emit(CounterStateDate(state.counter + 1));
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    //recuperamos o valor anterior e emitimos um novo valor
    emit(CounterStateDate(state.counter - 1));
  }
}
