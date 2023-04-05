part of 'colors_handler.dart';

@immutable
abstract class ColorsState {}

class ColorsInitial extends ColorsState {}

class ColorsCurrentColor extends ColorsState {
  final Color color;

  ColorsCurrentColor({required this.color});

  ColorsCurrentColor copyWith({
    Color? color,
  }) {
    return ColorsCurrentColor(
      color: color ?? this.color,
    );
  }
}
