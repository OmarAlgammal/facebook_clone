import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/utilities/routers.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerate,
      locale: Locale.fromSubtags(languageCode: 'en',),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: whiteColor,
          appBarTheme: AppBarTheme(
              backgroundColor: whiteColor,
              elevation: size0,
              titleSpacing: size0,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: whiteColor,
                  statusBarBrightness: Brightness.light,
                  statusBarIconBrightness: Brightness.dark
              )
          ),
          iconTheme: IconThemeData(
            color: greyColor,
          ),
          textTheme: TextTheme(
            headlineSmall: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: blackColor,
            ),
            headlineMedium: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: blackColor,
            ),
            headlineLarge: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: blackColor,
            ),
              bodyMedium: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: blackColor,
              ),
            bodySmall: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: blackColor,
            ),
            bodyLarge: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: blackColor,
            ),
          )
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,

        defaultScale: false,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
        ],
        background: Container(color: Color(0xFFF5F5F5)),
      ),
      initialRoute: AppRoutes.landingPage,
    );
  }
}

