

import 'package:either_dart/either.dart';
import 'package:facebook_clone/data/data_source/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationUseCase{
  final RegistrationDataSource registrationDataSource = RegistrationDataSource();

  Future<Either<FirebaseAuthException, UserCredential>> createAccountWithEmailAndPassword({required String email, required String password}) async{

    return registrationDataSource.createAccountWithEmailAndPassword(email: email, password: password);
  }

  Future<Either<FirebaseAuthException, UserCredential>> signInWithEmailAndPassword({required String email, required String password}) async{
    return await registrationDataSource.signInWithEmailAndPassword(email: email, password: password);
  }

}