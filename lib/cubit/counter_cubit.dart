import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());

  int teamAIncrement = 0;
  int teamBIncrement = 0;

  //method for incrementTeamA
  void incrementTeamA(int buttonNumber) {
    teamAIncrement += buttonNumber;
    emit(CounterAIncrement());
  }

  //method for incrementTeamBx
  void incrementTeamB(int buttonNumber) {
    teamBIncrement += buttonNumber;
    emit(CounterBIncrement());
  }

  void reset() {
    teamBIncrement = 0;
    teamAIncrement = 0;
    emit(CounterBIncrement());
  }
}
