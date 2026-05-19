import 'package:equatable/equatable.dart';

// The LoginEvent is the Menu of possible user actions on the Login screen.
// It defines all the different "things that can happen" that the BLoC needs to react to.

// Base class: All specific login events will inherit from this.
// Equatable: It extends Equatable so that the BLoC can compare two events.
// If the user clicks the "Login" button twice with the exact same data, Equatable helps the BLoC avoid unnecessary processing
// if it's already handling that exact request.
sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

// Trigger: This event is fired when the user types or changes the phone number in the input field.
// Data carried: It carries the latest phone string the user typed.
// Why: The BLoC needs this to validate the phone number and update the state immediately (for live validation).
class LoginPhoneChanged extends LoginEvent {
  final String phone;
  const LoginPhoneChanged(this.phone);

  @override
  List<Object?> get props => [phone];
}

class LoginPasswordChanged extends LoginEvent {
  final String password;
  const LoginPasswordChanged(this.password);

  @override
  List<Object?> get props => [password];
}

// Trigger: This event is fired when the user clicks the "Login" button.
// Data carried: It carries the current state of the form (phone number and any validation errors).
// Why: The BLoC needs this to perform the final login action (e.g., sending the data to the server).
class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}
