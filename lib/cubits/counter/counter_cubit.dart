import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../color/color_cubit.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int incrementSize = 1;
  final ColorCubit colorCubit;
  late final StreamSubscription
      colorSubscription; //colorSubscription은 constructor에서 initialized되기때문

  CounterCubit({
    required this.colorCubit,
  }) : super(CounterState.initial()) {
    // color state값에 따라 얼마를 증가 시킬건지를 결정된다
    //리슨은 등록 시점이후 다음 큐빗 스트림의 값을 읽는다
    //그러나 자동으로 dispose되는것이 아니기때문에 메모리 누수 가능성이있어
    //cancel해줘야함
    colorSubscription = colorCubit.stream.listen((constructor colorState) {
      if (colorState.color == Colors.red) {
        incrementSize = 1;
      } else if (colorState.color == Colors.green) {
        incrementSize = 10;
      } else if (colorState.color == Colors.blue) {
        incrementSize = 100;
      } else if (colorState.color == Colors.black) {
        // 색이 검정이 되는순간 무조건 100을 빼고 incrementsize를 설정한다.
        emit(state.copyWith(counter: state.counter - 100));
        incrementSize = -100;
      }
    });
  }

//외부에서 호출할 수 있도록
  void changeCounter() {
    emit(state.copyWith(counter: state.counter + incrementSize));
  }

//더이상 state변화를 원치 않고 listen을 그만두기위해 close함수 만들기
  @override
  Future<void> close() {
    colorSubscription.cancel();
    return super.close();
  }
}
