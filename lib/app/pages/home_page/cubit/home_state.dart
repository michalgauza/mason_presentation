import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.success() = _Success;

  const factory HomeState.error() = _Error;

  const factory HomeState.loading() = _Loading;
}
