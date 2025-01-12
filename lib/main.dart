import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:shoppingapp/Admin/add_product.dart';
import 'package:shoppingapp/Admin/admin_login.dart';
import 'package:shoppingapp/pages/Order.dart';
import 'package:shoppingapp/pages/bottomnav.dart';
import 'package:shoppingapp/pages/home.dart';
import 'package:shoppingapp/pages/login.dart';
import 'package:shoppingapp/pages/onboarding.dart';
import 'package:shoppingapp/pages/signup.dart';
import 'package:shoppingapp/services/constant.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishablekey;
  // Initialize Firebase with platform-specific options
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoppingwebsite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Bottomnav(),
    );
  }
}
