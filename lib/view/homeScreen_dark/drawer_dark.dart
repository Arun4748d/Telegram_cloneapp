import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/homeScreen_light.dart';
class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colorconstants.darkModeColor,
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
                CircleAvatar(radius: 35,backgroundImage: NetworkImage("https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg"),),                  
              IconButton(onPressed:() {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen_light(),));
                 }, icon: Icon(Icons.light_mode,color: Colorconstants.mainWhite,))      ,                
              ],
            ),
             SizedBox(height: 11,),
             Text("Arun",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("+91 7356556028",style: TextStyle(color: Colorconstants.mainWhite.withOpacity(0.5),
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