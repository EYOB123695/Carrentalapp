import 'package:carrentalapp/firebase_options.dart';
import 'package:carrentalapp/presentation/pages/Maps_detailpage.dart';
import 'package:carrentalapp/presentation/pages/car_detailpage.dart';
import 'package:carrentalapp/presentation/pages/car_list_screen.dart';
import 'package:carrentalapp/presentation/pages/onboarding_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Onboarding());
  }
}
