import 'package:finance_mobile_application_design/pages/loginPage.dart';
import 'package:finance_mobile_application_design/pages/overviewPage.dart';
import 'package:finance_mobile_application_design/pages/transactionPage.dart';
import 'package:finance_mobile_application_design/utils/colors.dart';
import 'package:finance_mobile_application_design/utils/routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      routes: {       
        '/' : (context) => TransactionPage(), 
        MyRoutes.loginPage:(context)=> LoginPage(),
        MyRoutes.overviewPage: (context)=> OverviewPage(),
        MyRoutes.transactionPage: (context)=> TransactionPage(),

      },
      theme: ThemeData(
        scaffoldBackgroundColor: PaletteColor.scaffoldBackgroundColor,
      ),
    );
  }
}