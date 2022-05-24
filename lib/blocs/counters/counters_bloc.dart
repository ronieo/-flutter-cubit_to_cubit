import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counters_event.dart';
part 'counters_state.dart';

class CountersBloc extends Bloc<CountersEvent, CountersState> {
  CountersBloc() : super(CountersState.initial()) {
    on<CountersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
