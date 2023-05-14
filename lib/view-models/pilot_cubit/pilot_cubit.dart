import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mintit/models/pilot.dart';
import 'package:mintit/services/web_service.dart';

part 'pilot_state.dart';

class PilotCubit extends Cubit<PilotState> {
  PilotCubit() : super(PilotInitial()) {
    fetchPilotList();
  }

  Future<void> fetchPilotList() async {
    try {
      emit(PilotLoading());
      await Future<void>.delayed(const Duration(seconds: 2));
      final pilots = listPilot;
      emit(PilotRetrieved(pilots: pilots));
    } catch (e) {
      emit(PilotFailed());
    }
  }
}
