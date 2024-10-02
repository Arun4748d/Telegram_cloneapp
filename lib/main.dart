import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/homeScreen_light.dart';
import 'package:telegram_cloneapp/view/loginScreen.dart/login_screen.dart';
import 'package:telegram_cloneapp/view/splashScreen/splashScreen.dart';
import 'package:telegram_cloneapp/view/start_Messagingscreen/start_messaging.dart';



String ?phoneno;
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: StartMessaging(
       
        ),
    );
  }
}