import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'colors_event.dart';
part 'colors_state.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorssState> {
  ColorsBloc() : super(ColorssState.initial()) {
    on<ColorsEvent>((event, emit) {
      // TODO: implement event handler
      if (state.color == Colors.red) {
        emit(state.copyWith(color: Colors.green));
      } else if (state.color == Colors.green) {
        emit(state.copyWith(color: Colors.blue));
      } else if (state.color == Colors.blue) {
        emit(state.copyWith(color: Colors.black));
      } else if (state.color == Colors.black) {
        emit(state.copyWith(color: Colors.red));
      }
    });
  }
}
