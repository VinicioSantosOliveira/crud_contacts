import 'package:bloc/bloc.dart';

part 'counte_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

  void _increment(CounterIncrement event, Emitter<CounterState> emit) {
    emit(CounterDataState(state.counter + 1));
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    emit(CounterDataState(state.counter - 1));
  }
}
