import 'package:equatable/equatable.dart';

abstract class CreateAccountState extends Equatable{}

class CreateAccountInitialState extends CreateAccountState{
  @override
  List<Object?> get props => [];
}

class AccountCreatedSuccessfullyState extends CreateAccountState{
  @override
  List<Object?> get props => [];
}

class FailedToCreateAccountState extends CreateAccountState{
  @override
  List<Object?> get props => [];
}

class AccountBeingCreated extends CreateAccountState{
  @override
  List<Object?> get props => [];
}