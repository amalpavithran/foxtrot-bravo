part of 'placeholder_bloc.dart';

@freezed
abstract class PlaceholderEvent with _$PlaceholderEvent {
  const factory PlaceholderEvent.started() = _Started;
}