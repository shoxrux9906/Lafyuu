import 'package:flutter/material.dart';
import 'package:practice_two/src/ui/auth/login_screen.dart';
import 'package:practice_two/src/ui/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

String password = "";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  password = prefs.getString("password1") ?? "";
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: password == "" ? LoginScreen() : MainScreen(),
    );
  }
}
