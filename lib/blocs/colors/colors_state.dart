// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'colors_cubit.dart';

class constructor extends Equatable {
  final Colorss colorss;
  constructor({
    required this.colorss,
  });

// colorState의 initial로 활용하기 위해 factory constructor
  factory constructor.initial() {
    return constructor(colorss: Colors.red); // 컬러값이 레드인 인스턴스를 리턴
  }

  @override
  List<Object> get props => [colorss];

  @override
  String toString() => 'ColorssState(colorss: $colorss)';

  constructor copyWith({
    Colorss? colorss,
  }) {
    return constructor(
      colorss: colorss ?? this.colorss,
    );
  }
}
