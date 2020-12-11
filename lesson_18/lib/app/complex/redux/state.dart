import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  static const initState = AppState(value: 'Initial value');

  const factory AppState({
    String value,
  }) = _AppState;
}
