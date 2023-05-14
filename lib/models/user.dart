import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  late final String firstName;
  late final String lastName;

  User({
    required this.firstName,
    required this.lastName,
  });
}
