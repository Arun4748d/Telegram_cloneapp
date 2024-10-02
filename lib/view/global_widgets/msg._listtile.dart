import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';

// ignore: must_be_immutable
class msg_listtile extends StatelessWidget {
  String imageurl;
  String title;
  String subtitle;
  String time;
  String notification;
 
  
   msg_listtile({
    required this.imageurl,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.notification,
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageurl),
          radius: 25,
        ),
        title: Text(title,
        style: TextStyle(color: Colorconstants.mainWhite,
        fontWeight: FontWeight.w500,
        fontSize:17, ),),
        subtitle: Text(subtitle,
        style: TextStyle(color: Colorconstants.mainWhite.withOpacity(0.3),
        // fontWeight: FontWeight.w500,
        fontSize:16, ),),
           trailing: Container(
             height: 50,
             width: 50,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text(time,
                 style: TextStyle(color: Colorconstants.mainWhite.withOpacity(0.3),
       //  fontWeight: FontWeight.w500,
        fontSize:13, ),),
        SizedBox(height: 5,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       padding: EdgeInsets.symmetric(vertical:2,horizontal: 7),
                       decoration: BoxDecoration(
                         color: Colorconstants.blue1,
                         borderRadius: BorderRadius.circular(10),
                     
                       ),
                       child: Text(notification,style: TextStyle(color: Colorconstants.mainWhite,
                       fontWeight: FontWeight.w500,
                       fontSize: 12.5,),
                       ),
                     ),
                   ],
                 ),
               ],
             ),
             
           ),
          
          
               );
  }
}