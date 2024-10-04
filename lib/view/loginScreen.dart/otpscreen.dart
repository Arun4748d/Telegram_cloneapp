import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_cloneapp/main.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/homeScreen_light.dart';

class Otpscreen extends StatefulWidget {
 
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  List<String>_otp=['','','','',''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorconstants.mainWhite,
      ),
      backgroundColor: Colorconstants.mainWhite,
body:  Padding(
  padding: const EdgeInsets.only(bottom: 35,),
  child: Column( 
          children: [
              Center(
              child: Container(
                height: 75,
                width: 75,
  // Image Section
                decoration: BoxDecoration(
                  image: DecorationImage(
              image: AssetImage("assets/images/otpscreen.jpg"),
              fit: BoxFit.cover,
                  ),
                ),
              ),  
            ),
  // Text Enter code
            SizedBox(height: 11,),
            Text("Enter code",style: TextStyle(
              color: Colorconstants.mainblack,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),),
  // Text
             SizedBox(height: 12,),
                  Text("Please enter code we have sent to your ",style: TextStyle(color: Colorconstants.mainblack,
                  fontSize: 14,)),
                 

             Text(" phone no $phoneno",style: TextStyle(color: Colorconstants.mainblack,
                  fontSize: 14,)),
                  SizedBox(height: 25,),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                      List.generate(5 ,(index) => 
                            otpTypingBox(context, index),                   
                      ),
                  ),
  // Didn't get the code Section
                  Spacer(),
                  Text("Didn't get the code?",
                  style: TextStyle(
                    color: Colorconstants.blue2,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
               ),
             )       
          ]
        ),
)     
    );
  }




  Padding otpTypingBox(BuildContext context, int index) {
    return Padding(
                      padding: const EdgeInsets.only(right: 10),                   
                           child: SizedBox(
                              height: 40,
                              width: 39,
        // TextFormfield
                            child: TextFormField(
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        // If Section
                          onChanged: (value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                            _otp[index]=value;
                            if(_otp.every((element)=>element.isNotEmpty)){
                               Navigator.pushReplacement(context,
                             MaterialPageRoute(builder: (context) => Homescreen_light()),
                             );
                            }
                          },
                    // 
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: 
                          [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                          ],
    // Border decoration Section
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colorconstants.mainblack,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                             focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colorconstants.blue2,width: 2.5,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          ),
                         ),
                        );
  }
}