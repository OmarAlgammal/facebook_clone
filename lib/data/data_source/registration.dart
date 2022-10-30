
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationDataSource{

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  ///TODO: use Either package here
  Future<Either<FirebaseAuthException, UserCredential>> createAccountWithEmailAndPassword({required String email, required String password}) async{
    try{
      UserCredential credential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return Right(credential);
    }on FirebaseAuthException catch (e){
      return Left(e);
    }
  }

  Future<Either<FirebaseAuthException, UserCredential>> signInWithEmailAndPassword({required String email, required String password}) async{
    try{
      UserCredential credential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return Right(credential);
    } on FirebaseAuthException catch(e){
      return Left(e);
    }
  }

  Future signOut() async{
    await _firebaseAuth.signOut();
  }


}