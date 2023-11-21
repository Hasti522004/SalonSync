import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:salonsync/binding/app_binding.dart';
import 'package:salonsync/route/route.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.homeScreen,
      getPages: AppRoutes.routes,
      initialBinding: AppBindings(),
    );
  }
}
