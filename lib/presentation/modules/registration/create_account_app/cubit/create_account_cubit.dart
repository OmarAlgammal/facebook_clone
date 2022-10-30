import 'package:facebook_clone/domain/usecases/registration/registration_usecase.dart';
import 'package:facebook_clone/presentation/modules/registration/create_account_app/cubit/create_account_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit({required this.registrationUseCase})
      : super(CreateAccountInitialState());

  final RegistrationUseCase registrationUseCase;

  createAccount({required String email, required String password}) {
    registrationUseCase.registrationDataSource
        .createAccountWithEmailAndPassword(email: email, password: password)
        .asStream()
        .listen((either) {
      if (either.isRight) {
        emit(AccountCreatedSuccessfullyState());
      } else {
        emit(FailedToCreateAccountState());
      }
    });
  }
}
