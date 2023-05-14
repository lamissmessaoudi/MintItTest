part of 'pilot_cubit.dart';

@immutable
abstract class PilotState {}

class PilotInitial extends PilotState {}

class PilotLoading extends PilotState {}

class PilotRetrieved extends PilotState {
  PilotRetrieved({
    required this.pilots,
  });

  final List<Pilot> pilots;
}

class PilotFailed extends PilotState {}
