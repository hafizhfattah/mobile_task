import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mobile_task/pages/auth/signin_page.dart';
import 'utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MyController());
    return Obx(() {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Task',
        theme: c.isActive.value
            ? ThemeData(
                brightness: Brightness.dark,
                useMaterial3: true,
                colorSchemeSeed: Colors.indigo,
              )
            : ThemeData(
                brightness: Brightness.light,
                useMaterial3: true,
                colorSchemeSeed: Colors.indigo,
              ),
        home: const SignIn(),
      );
    });
  }
}
