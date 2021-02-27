import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'placeholder_event.dart';
part 'placeholder_state.dart';
part 'placeholder_bloc.freezed.dart';

class PlaceholderBloc extends Bloc<PlaceholderEvent, PlaceholderState> {
  PlaceholderBloc() : super(_Initial());

  @override
  Stream<PlaceholderState> mapEventToState(
    PlaceholderEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
