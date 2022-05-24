part of 'counters_cubit.dart';

class CountersState extends Equatable {
  final int counters;
  CountersState({
    required this.counters,
  });

  factory CountersState.initial() {
    return CountersState(counters: 0);
  }

  @override
  List<Object> get props => [counters];

  @override
  String toString() => 'CountersState(counters: $counters)';

  CountersState copyWith({
    int? counter,
  }) {
    return CountersState(
      counters: counters ?? this.counters,
    );
  }
}
