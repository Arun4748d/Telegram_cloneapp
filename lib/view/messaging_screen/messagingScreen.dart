
import 'package:flutter/material.dart';

import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/homeScreen_light.dart';

class Messagingscreen extends StatefulWidget {
  const Messagingscreen({required this.title,required this .imageurl,required this.time, super.key});
  final String title;
  final String time;
  final String imageurl;
  @override
  State<Messagingscreen> createState() => _MessagingscreenState();
}

class _MessagingscreenState extends State<Messagingscreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarSection(context,widget.title,widget.imageurl,widget.time),

    body:PageView(
      children: [ Container(
        
        decoration: BoxDecoration(
          
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage("assets/images/teelemsgScreen.jpeg")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextFormField(
              focusNode: _focusNode,
            decoration: InputDecoration(
              
              fillColor: Colorconstants.mainWhite,
              filled: true,
              prefix: Icon(Icons.emoji_emotions_outlined
                ,color: Colorconstants.mainblack.withOpacity(0.5,),
              ),
            prefixIconConstraints: BoxConstraints(minWidth: 40),
               
              suffix:  Icon(Icons.mic_outlined
              ,color: Colorconstants.mainblack.withOpacity(0.5,),
              ),
              
               hintText: "  Message",
              
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colorconstants.mainWhite,),
                
                

              ),
                  constraints: BoxConstraints(
      
      maxHeight: 50, 
     
    ),
            ),
          )
        ],
      ),
      ),
      
      ]
    ),
    
    );
  }

  AppBar appbarSection(BuildContext context, String title,
   String imageurl,
   dynamic time,) {
    return AppBar(
      backgroundColor: Colorconstants.blue2,
      leading: IconButton(onPressed: () {
        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => Homescreen_light(),));
      }, icon: Icon(Icons.arrow_back,color: Colorconstants.mainWhite,)),
      title:Row(
       
        children: [
          CircleAvatar(
              backgroundImage: NetworkImage(imageurl),
          ),
              SizedBox(width: 10,),
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,
                  color: Colorconstants.mainWhite)),
                Text('last seen at $time', style: TextStyle(fontSize: 16, color: Colorconstants.mainWhite.withOpacity(0.7))),
            ],
          )
        ],
      ) ,
      actions: [
        Icon(Icons.phone,color: Colorconstants.mainWhite,),
        SizedBox(width: 20,),
        Icon(Icons.more_vert,color: Colorconstants.mainWhite,),
         SizedBox(width: 10,),
      ],
    );
  }
}