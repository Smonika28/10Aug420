part of 'seller_signup_bloc.dart';

@immutable
abstract class SignupEvent {}

// ignore: must_be_immutable
class SignupEvents extends SignupEvent {
  String name;
  String password;
  String confirmPassword;
  String email;
  String phone;
  String user_type;

  SignupEvents(
      {required this.name,
      required this.password,
      required this.confirmPassword,
      required this.email,
      required this.phone,
      required this.user_type});
}
