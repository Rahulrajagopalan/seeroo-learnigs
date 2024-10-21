import 'package:flutter/material.dart';

// user of product here
class Product {
  String name;
  bool isInStock;

  Product(this.name, this.isInStock);
}
// ends

sealed class LoginState {}

class InitialState extends LoginState {}

class LoadingState extends LoginState {}

class SuccessState extends LoginState {}

class FailureState extends LoginState {
  final String errorMessage;
  FailureState(this.errorMessage);
}

class LoginScreen extends StatelessWidget {
  final LoginState loginState;

  LoginScreen({required this.loginState});

  @override
  Widget build(BuildContext context) {
    switch (loginState.runtimeType) {
      case InitialState:
        return buildInitialUI();
      case LoadingState:
        return buildLoadingUI();
      case SuccessState:
        return buildSuccessUI();
      case FailureState:
        return buildFailureUI((loginState as FailureState).errorMessage);
      default:
        return Text("Unknown state");
    }
  }

  Widget buildInitialUI() => Scaffold(body: Text("Enter your credentials"));
  Widget buildLoadingUI() => Scaffold(body: Center(child: CircularProgressIndicator()));
  Widget buildSuccessUI() => Scaffold(body: Text("Login Successful"));
  Widget buildFailureUI(String error) => Scaffold(body: Text("Login Failed: $error"));
}
