
import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/main.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/homeScreen_dark/homescreen_dark.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/profile_screen.dart';


class MyHeaderDrawer_light extends StatefulWidget {
    // final String?  phoneNumber;
  const MyHeaderDrawer_light ({ super.key});
    
  @override
  State<MyHeaderDrawer_light > createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer_light > {

    bool isDarkModeEnabled = false;
  @override

  Widget build(BuildContext context) {
    return  
    
    Container(
      color: Colorconstants.blue3,
      width: double.infinity,
      height: 163,

      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20,),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [   
            Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [       
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                  },
                  child: CircleAvatar(radius: 35,backgroundImage: NetworkImage("https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg"),)),                  
                 IconButton(onPressed:() {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen_dark(),));
                 }, icon: Icon(Icons.dark_mode,color: Colorconstants.mainWhite,
                  ))      ,     
                
              ],
            ),
             SizedBox(height: 11,),
             Text("Arun",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("+91 $phoneno",style: TextStyle(color: Colorconstants.mainWhite.withOpacity(0.6),
                 fontSize: 15,
                 fontWeight: FontWeight.normal)),
                 Icon(Icons.keyboard_arrow_down,color: Colorconstants.mainWhite,
                 size: 30,),
                    ],
             ),

          ],
        ),
      ),
    );
  }
}     