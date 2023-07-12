part of 'sign_up_bloc.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();
  
  @override
  List<Object> get props => [];
}

class SignUpInitial extends SignUpState {
  const SignUpInitial();
}

class SignUpSend extends SignUpState {

  final String name;
  final String secondName;

  const SignUpSend(
   {
    required this.name,
    required this.secondName,
  });

  @override
  List<Object> get props => [name,secondName];
}