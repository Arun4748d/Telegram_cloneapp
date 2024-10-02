import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_cloneapp/database.dart';
import 'package:telegram_cloneapp/main.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/loginScreen.dart/choose_country.dart';
import 'package:telegram_cloneapp/view/loginScreen.dart/otpscreen.dart';

class LoginScreen extends StatefulWidget {
  
    
   LoginScreen({required this.countryname, required this.code, required this.flagcode, super.key });
   final String countryname;
  final String code;
  final String flagcode;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneno10=TextEditingController();
  final _formkey = GlobalKey<FormState>();
   final FocusNode _focusNode = FocusNode();
     @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  void _countryfab(int index){
        Navigator.push(context, MaterialPageRoute(builder:(context) => ChooseCountry(
        countryname:datac.CountryList[index]["countryname"],
           code:datac.CountryList[index]["code"],
            flagcode:datac.CountryList[index]["flagcode"],
      ),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.mainWhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             
            children: [
              
              Text("Your phone number",style: TextStyle(
                color: Colorconstants.mainblack,
                fontWeight: FontWeight.w600,
                fontSize: 19)),
                SizedBox(height: 10,),
               Text("Please confirm your country code",
               style: TextStyle(color: Colorconstants.mainblack,
               fontSize: 15)),
                Text("and enter your phone number",style: TextStyle(color: Colorconstants.mainblack,
                fontSize: 15)),
                SizedBox(height: 20,),
                Column(
                  children: [
           ChooseCountry_Section(),
          SizedBox(height: 25,),

           EnterPhoneNumber_Section(),
                ],
                ), 
            ],
          ),
        ),
      ),
// FloatingActionButton
      floatingActionButton:
       floatingActionButton_Section(context), 
    );
  }





  FloatingActionButton floatingActionButton_Section(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colorconstants.blue1,
      child: Icon(Icons.arrow_forward,color: Colorconstants.mainWhite,),
      onPressed: () {
         if(
                  _formkey.currentState!.validate()){
                   phoneno =phoneno10.text;
                    
                      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => Otpscreen(),),
                      (route)=>false,
                      );
                    }else{
                      print("invaalid credentials");
                    }              
      } ,);
  }

  GestureDetector ChooseCountry_Section() {
    return GestureDetector(
              onTap: () => _countryfab(0),
              child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical:13 ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
// Flag Section
            CountryFlag.fromCountryCode(widget.flagcode, height: 15, width: 25),
            SizedBox(width: 10),
 // countryname
            Text(widget.countryname,style: TextStyle(
                color: Colorconstants.mainblack,
             fontWeight: FontWeight.w500,
            fontSize: 17,
            ),),
            Spacer(),
            Icon(Icons.keyboard_arrow_right),
          ],
        ), 
          ),
            );
  }


  Form EnterPhoneNumber_Section() {
    return Form(
                key: _formkey,
                child:
// TextFormField Section
                TextFormField( 
                   focusNode: _focusNode,
                   controller: phoneno10,
                   keyboardType: TextInputType.number,
                   inputFormatters: [LengthLimitingTextInputFormatter(10),
                   FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    prefixText: "${widget.code}| ",
                    prefixStyle: TextStyle(fontSize: 16, color: Colors.black),
                    label: Text("Phone number",style: TextStyle(
                      color: Colorconstants.blue3,
                    ),),
// Border Decoration
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colorconstants.blue1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colorconstants.blue1,
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colorconstants.blue2,
                      ),
                    ),
                  ),
//Validator Section 
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return "enter phone number ";
                    }else if(phoneno10.text.length <10 || phoneno10.text.length >10){
                      return "enter valid phone number";
                    
                    }else{
                      return null;
                    }
                  },
                ),
              );
  }
}