import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'configs/utils/app_routes.dart';
import 'configs/utils/colors_utils.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rg Pet',
      theme: ThemeData(
          fontFamily: 'AnimalHouse',
          primaryColor: ColorsUtil.black,
          buttonTheme: const ButtonThemeData(
            buttonColor: ColorsUtil.black,
            textTheme: ButtonTextTheme.accent,
          ),
          iconTheme: const IconThemeData(color: ColorsUtil.green),
          textTheme: ThemeData.light().copyWith()
              .textTheme
              .copyWith(headline6: const TextStyle(fontFamily: 'AnimalHouse')),
          // colorScheme: ColorScheme.fromSwatch(primarySwatch: ColorsUtil.green)
          //     .copyWith(secondary: ColorsUtil.black)
        ),
      initialRoute: 'splash',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('pt', ''),
        Locale('es', ''),
      ],
    );
  }
}
