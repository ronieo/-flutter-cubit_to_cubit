import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<constructor> {
  // color_state에서 만들었던 factory constructor를 넣어주기
  ColorCubit() : super(constructor.initial());

  void changeColor() {
    // 컬러값을 바꾸는 역할을하는 함수.
    //모든 함수에는 state get & 새로운 state Stream으로 내보내는 emit함수가 주어진다
    if (state.color == Colors.red) {
      emit(state.copyWith(color: Colors.green));
    } else if (state.color == Colors.green) {
      emit(state.copyWith(color: Colors.blue));
    } else if (state.color == Colors.blue) {
      emit(state.copyWith(color: Colors.black));
    } else if (state.color == Colors.black) {
      emit(state.copyWith(color: Colors.red));
    }
  }
}
