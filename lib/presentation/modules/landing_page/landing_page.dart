import 'package:facebook_clone/domain/usecases/registration/registration_usecase.dart';
import 'package:facebook_clone/presentation/modules/bottom_nav_page.dart';
import 'package:facebook_clone/presentation/modules/registration/create_account_app/cubit/create_account_cubit.dart';
import 'package:facebook_clone/presentation/modules/registration/create_account_app/cubit/create_account_state.dart';
import 'package:facebook_clone/presentation/modules/registration/login_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegistrationUseCase registrationUseCase = RegistrationUseCase();
    return BlocProvider<CreateAccountCubit>(
      create: (context) => CreateAccountCubit(registrationUseCase: registrationUseCase),
      child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          if (state is AccountCreatedSuccessfullyState){
            return const BottomNavPage();
          }else{
            return const LoginPage();
          }
        },
      ),
    );
  }
}
