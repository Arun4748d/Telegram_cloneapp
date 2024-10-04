import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/view/splashScreen/splashScreen.dart';



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
    
      home:Splashscreen(
       

        ),
    );
  }
}