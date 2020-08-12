import 'package:blocpattern/shared/bloc_delegate.dart';
import 'package:blocpattern/ui/screens/HomeScreen/HomeScreen.dart';
import 'package:blocpattern/ui/screens/Login/LoginPage.dart';
import 'package:blocpattern/ui/screens/Login/LoginPage2.dart';
import 'package:blocpattern/ui/screens/LoginNow/LoginNow.dart';
import 'package:blocpattern/ui/screens/Welcome/welcomeScreen.dart';
import 'package:blocpattern/ui/screens/chunk/chuck_categories_view.dart';
import 'package:blocpattern/ui/screens/signUp/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:blocpattern/ui/screens/counter/counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor.delegate=AppBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Counter Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//      home: CounterScreen(),
//      home: LoginPage(),
//      home: LoginPage2(),

      home: WelcomeScreen(),


//      home:GetChuckCategories(),


//      home: LoginNow(),
//      home: SignUpScreen(),
//      home: HomeScreen(),
    );


  }
}
