import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/database.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/homeScreen_light.dart';

class FloatingScreenlight extends StatelessWidget {
   String imageurl;
  String title;
 
  String time;
   FloatingScreenlight(
   
    {
        required this.imageurl,
    required this.title,
    
    required this.time,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colorconstants.blue2,
        leading: IconButton(onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => Homescreen_light(),));
        }
        , icon: Icon(Icons.arrow_back,color: Colorconstants.mainWhite,)),
        title: Text("New Message",style: TextStyle(color: Colorconstants.mainWhite,
        fontWeight: FontWeight.w500,
        fontSize: 21),),
        actions: [Icon(Icons.search,color: Colorconstants.mainWhite,size: 23,),
        SizedBox(width: 20,),
        Icon(Icons.sort_by_alpha,color: Colorconstants.mainWhite,size: 23,),
        SizedBox(width: 15,)],
      ),
      floatingActionButton: FloatingActionButton(onPressed:() { 
      },
      backgroundColor: Colorconstants.blue1,
      child: Icon(Icons.person_add,color: Colorconstants.mainWhite,),
      
      ),
      body:Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14,
              
            ),
            color: Colorconstants.mainWhite,
            width: double.infinity,
            height: 140,
            child: Column(
              children: [
                Row(children: [
                   Icon(Icons.people_outline,color: Colorconstants.mainblack.withOpacity(0.5),
                  ),
                   SizedBox(width:25 ,),
                   Text("New Group",
                   style: TextStyle(color: Colorconstants.mainblack,
                   fontSize: 18,
                   fontWeight: FontWeight.normal),),
                ],),
                SizedBox(height: 17,),
                           Row(children: [
                   Icon(Icons.person_add_outlined,color: Colorconstants.mainblack.withOpacity(0.5),
                  ),
                   SizedBox(width:25 ,),
                   Text("New Contact",
                   style: TextStyle(color: Colorconstants.mainblack,
                   fontSize: 18,
                   fontWeight: FontWeight.normal),),
                ],),
                SizedBox(height: 17,),
                           Row(children: [
                   Icon(Icons.speaker_group_outlined,color: Colorconstants.mainblack.withOpacity(0.5),
                  ),
                   SizedBox(width:25 ,),
                   Text("New Channel",
                   style: TextStyle(color: Colorconstants.mainblack,
                   fontSize: 18,
                   fontWeight: FontWeight.normal),),
                ],),
              ],
            ),
          
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13,vertical: 4,),
            width: double.infinity,
            color: const Color.fromARGB(255, 235, 234, 234),
            child: Text("Sorted by last seen time",style:
            TextStyle(color: Colorconstants.mainblack.withOpacity(0.6,),
            fontWeight: FontWeight.w500,
            fontSize: 14.5,),
          )
          ),
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) =>   floatScreen(
             imageurl: database.telegramList[index]["imageurl"], 
      title: database.telegramList[index]["title"],
      time: database.telegramList[index]["time"],

          ),
          ),
        )
        ],
      ),
      
    );
  }

  ListTile floatScreen({required String imageurl, required String title, required String time}) {
    return ListTile(
             leading:   CircleAvatar(backgroundImage: NetworkImage(imageurl)),
              title: Text(title,
                  style: TextStyle(color: Colorconstants.mainblack,
                  fontWeight: FontWeight.w500,
                  fontSize:17, ),),
                  subtitle: Text("last seen at $time",
                  style: TextStyle(color: Colorconstants.mainblack.withOpacity(0.6),
                
                  fontSize:16, 
                  backgroundColor: Colorconstants.mainWhite
                  ),),
         
        );
  }
}