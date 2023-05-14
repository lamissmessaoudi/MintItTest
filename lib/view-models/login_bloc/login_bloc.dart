import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mintit/models/user.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      try {
        emit(LoginLoading());
        await Future<void>.delayed(const Duration(seconds: 2));
        final user = User(
          firstName: event.firstName,
          lastName: event.lastName,
        );
        emit(
          LoginSuccess(
            user: user,
          ),
        );
      } catch (e) {
        emit(LoginFailed());
      }
    });
  }
}
