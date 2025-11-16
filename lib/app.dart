import 'package:flutter/material.dart';
import 'package:myecommerce_app/core/theme.dart';
import 'package:myecommerce_app/views/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: RegisterScreen(),
    );
  }
}
