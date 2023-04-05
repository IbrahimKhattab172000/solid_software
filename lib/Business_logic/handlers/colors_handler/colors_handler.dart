import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'colors_state.dart';

class ColorsHandler extends Cubit<ColorsState> {
  int nextInt = 0xffffffff;
  int withAlpha = 0xff;

  ColorsHandler() : super(ColorsInitial()) {
    _initial();
  }

  void _initial() {
    emit(ColorsCurrentColor(color: const Color(0xffFFFFFF)));
  }

  void generateRandomColor() {
    Color color;
    color = Color(Random().nextInt(nextInt)).withAlpha(withAlpha);
    emit((state as ColorsCurrentColor).copyWith(color: color));
  }
}
