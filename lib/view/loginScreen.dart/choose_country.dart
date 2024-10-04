import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/database.dart';
import 'package:telegram_cloneapp/view/loginScreen.dart/login_screen.dart';

class ChooseCountry extends StatefulWidget {
  ChooseCountry({required this.countryname, required this.code, required this.flagcode, super.key});
  final String countryname;
  final String code;
  final String flagcode;

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
   bool isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// Appbar
      appBar: AppBar(
        backgroundColor: Colorconstants.mainWhite,
        title: Text("Choose a country", style: TextStyle(
          color: Colorconstants.mainblack,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),),
        actions: [
          Icon(Icons.search), SizedBox(width: 15,)
        ],
      ),
      backgroundColor: Colorconstants.mainWhite,
//ListviewBuilder 
      body: ListView.builder(
        itemCount: datac.CountryList.length,
        itemBuilder: (context, index) => countryCc(

          countryname: datac.CountryList[index]["countryname"],
          code: datac.CountryList[index]["code"],
          flagcode: datac.CountryList[index]["flagcode"],
          onCardTaped: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(
              countryname: datac.CountryList[index]["countryname"],
              code: datac.CountryList[index]["code"],
              flagcode: datac.CountryList[index]["flagcode"],
            )));
          },
        ),
      ),
    );
  }
}

Widget countryCc({
  required String countryname,
  required String code,
  required String flagcode,
  void Function()? onCardTaped,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: ListTile(
// flagcode 
      leading: CountryFlag.fromCountryCode(flagcode, height: 15, width: 25),
// Country name
      title: Text(
        countryname,
        style: TextStyle(
          color: Colorconstants.mainblack,
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
// country phone codes
      trailing: Text(
        code,
        style: TextStyle(
          color: Colorconstants.blue3,
          fontSize: 17,
          fontWeight: FontWeight.normal,
        ),
      ),
      onTap: onCardTaped,
    ),
  );
}