import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);

  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement(String team, int buttonNumber) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
