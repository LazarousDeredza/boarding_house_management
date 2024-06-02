import 'package:boarding_house_management/features/authentication/controllers/onboarding/onboaring_controller.dart';
import 'package:boarding_house_management/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:boarding_house_management/features/profile/controllers/account_setup_screen_controller.dart';
import 'package:boarding_house_management/features/authentication/controllers/authentication_repository.dart';
import 'package:boarding_house_management/features/authentication/controllers/forgotpassword_controller.dart';
import 'package:boarding_house_management/features/authentication/controllers/login_controller.dart';
import 'package:boarding_house_management/features/authentication/controllers/register_controller.dart';
import 'package:boarding_house_management/features/bookings/controllers/bookings_controller.dart';
import 'package:boarding_house_management/features/bookings/controllers/bookings_repository.dart';
import 'package:boarding_house_management/features/dashboard/controllers/dashboard_controller.dart';
import 'package:boarding_house_management/features/authentication/controllers/onboarding/onboaring_controller.dart';
import 'package:boarding_house_management/features/home/controllers/bottomnavbar_controller.dart';
import 'package:boarding_house_management/features/residents/controllers/residents_controller.dart';
import 'package:boarding_house_management/features/rooms/controllers/rooms_controller.dart';
import 'package:boarding_house_management/features/profile/controllers/user_controller.dart';
import 'package:boarding_house_management/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCfTVK0NpiRif1a7G1die0StODIJYpWSFs',
      appId: '1:851581617516:android:b98bf1e42d52f532ac1f49',
      messagingSenderId: '851581617516',
      projectId: 'boardinghousemanagement-2ba24',
      storageBucket: 'boardinghousemanagement-2ba24.appspot.com',
    ),
  );
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnBoardingController(),
        ),
        ChangeNotifierProvider(
          create: (context) => NavBarController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ResidentsController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AccountSetUpScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignInController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthenticationRepository(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ForgotPasswordController(),
        ),
        ChangeNotifierProvider(
          create: (context) => DashboardController(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserController(),
        ),
        ChangeNotifierProvider(
          create: (context) => RoomsController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BookingRepository(),
        ),
        ChangeNotifierProvider(
          create: (context) => BookingsController(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
