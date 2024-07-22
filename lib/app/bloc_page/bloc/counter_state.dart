part of 'counter_bloc.dart';

abstract class CounterState {
  final int counter;

  CounterState(this.counter);
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(0);
}

class CounterDataState extends CounterState {
  CounterDataState(int counter) : super(counter);
}
