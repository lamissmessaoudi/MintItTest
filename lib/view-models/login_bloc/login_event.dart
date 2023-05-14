part of 'login_bloc.dart';

class LoginEvent {
  LoginEvent({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;
}
