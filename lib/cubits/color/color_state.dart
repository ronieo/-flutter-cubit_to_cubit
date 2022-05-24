part of 'color_cubit.dart';

class constructor extends Equatable {
  final Color color;
  //generate constructor
  constructor({
    required this.color,
  });

// colorState의 initial로 활용하기 위해 factory constructor
  factory constructor.initial() {
    return constructor(color: Colors.red); // 컬러값이 레드인 인스턴스를 리턴
  }

  @override
  List<Object> get props => [color];

  @override
  String toString() => 'ColorState(color: $color)';

  constructor copyWith({
    Color? color,
  }) {
    return constructor(
      color: color ?? this.color,
    );
  }
}
