import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: padding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Center(
                  child: Icon(
                    Icons.facebook_rounded,
                    color: blueColor,
                    size: size86,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email'
                            ),
                            gap8,
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: size8, horizontal: size8,),
                                hintText: 'Login with your email',
                                border: OutlineInputBorder(
                                  borderRadius: circular8,
                                )
                              ),

                            ),
                            gap12,
                            Text(
                                'Password'
                            ),
                            gap8,
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                  contentPadding: const EdgeInsets.symmetric(vertical: size8, horizontal: size8,),
                                  border: OutlineInputBorder(
                                    borderRadius: circular8,
                                  )
                              ),

                            )
                          ],
                        ),
                      ),
                      gap24,
                      RoundedButton(text: 'Sign in', onPressed: (){
                        ///TODO: complete this action
                        Navigator.pushNamed(context, AppRoutes.bottomNavPage);
                      }),
                    ]
                ),
              ),
              Flexible(
                flex: 0,
                child: RichText(
                  text: TextSpan(
                    text: 'Dont\'t have an account? ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(

                    ),
                    children: [
                      TextSpan(
                        text: 'create account',
                        onEnter: (enter){
                          debugPrint('pressed');
                        },
                          recognizer: TapGestureRecognizer()..onTap = (){
                          Navigator.pushNamed(context, AppRoutes.createAccountPage);
                          },
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: blueColor
                        )
                      )
                    ]
                  ),
                )
              )
            ]
        ),
      ),
    );
  }
}
