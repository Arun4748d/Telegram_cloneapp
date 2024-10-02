import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/homeScreen_light.dart';
import 'package:telegram_cloneapp/view/loginScreen.dart/choose_country.dart';

import 'package:telegram_cloneapp/view/loginScreen.dart/login_screen.dart';
import 'package:telegram_cloneapp/view/loginScreen.dart/otpscreen.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 6)).then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => 
      ChooseCountry(
        countryname: '', code: '', flagcode: '',
      ),));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.darkModeColor,
      body: 
       Center(
         child: Container(
           height: 150,
           width: 150,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("assets/images/telegram.1024x1024.png"),
               fit: BoxFit.cover,
             ),
           ),
         ),
       )
    
    );
  }
}