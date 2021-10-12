import 'package:flutter/material.dart';
import 'package:forms/pages/list/history_screen.dart';
import 'package:forms/pages/transfer/transfer_form.dart';
import 'package:forms/pages/sign_in/sign_in_screen.dart';
import 'package:forms/util/AppStyles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: themePrimaryy(),
      // Usar este tema para el login y list
      //theme: themeSecondary(),
      home: TransferForm(),
      initialRoute: 'forms',
        routes: {
          'forms' : (BuildContext context) => TransferForm(),
          'login' : (BuildContext context) => SignInScreen(),
          'list' : (BuildContext context) => HistoryScreen()
        }
    );
  }
}