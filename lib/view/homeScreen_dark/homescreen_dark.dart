import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/database.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/global_widgets/msg._listtile.dart';
import 'package:telegram_cloneapp/view/homeScreen_dark/drawer_dark.dart';

class Homescreen_dark extends StatelessWidget {
  const Homescreen_dark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        // leading: Icon(Icons.menu,color: Colorconstants.mainWhite,),
        title: Text("Telegram",style: TextStyle(color: Colorconstants.mainWhite,
        fontWeight: FontWeight.w500,
        fontSize: 21),),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.search,color: Colorconstants.mainWhite,),
        )],
        backgroundColor: Colorconstants.darkModeColor,
        
       
      ),
      backgroundColor: Colorconstants.darkModeColor2,
// floatingActionbutton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mode_edit,color: Colorconstants.mainWhite),
        backgroundColor: Colorconstants.blue1,
        
        onPressed: () {
          
        },
         ),
         drawer: Drawer(
          
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawer()
                 
                ],
              ),
            ),
          ),
         ),
       body: ListView.separated(itemBuilder: (context, index) => 
       msg_listtile(imageurl: database.telegramList[index]["imageurl"],
        title:database.telegramList[index]["title"] , 
        subtitle: database.telegramList[index]["subtitle"],
         time: database.telegramList[index]["time"], 
         notification: database.telegramList[index]["notification"],
       ),
        separatorBuilder: (context, index) => Container(
       height: 0.4,
       color: Colors.black,
                  ), itemCount: 20),
       
    );
  }

  Container MyDrawer() => Container(
    color: Colorconstants.darkModeColor2,
    height: 700,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          
          Row(
            children: [
              
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("My Profile",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
             SizedBox(height: 20,),
           
        
              Row(
            children: [
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("New Group",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
             SizedBox(height: 20,),
              Row(
            children: [
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("Contacts",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
             SizedBox(height: 20,),
              Row(
            children: [
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("Calls",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
             SizedBox(height: 20,),
              Row(
            children: [
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("Saved Messages",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
             SizedBox(height: 20,),
              Row(
            children: [
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("Settings",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
             SizedBox(height: 20,),
              Row(
            children: [
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("Invite Friends",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
             SizedBox(height: 20,),
              Row(
            children: [
              Icon(Icons.account_circle_outlined,
              color: Colorconstants.mainWhite.withOpacity(0.5),
              size: 30,),
              SizedBox(width: 25,),
                Text("Telegram Features",style: TextStyle(color: Colorconstants.mainWhite,
             fontSize: 18,
             fontWeight: FontWeight.w500),),
            ],
          ),
          // Material(
          //   // color: Colorconstants.darkModeColor2,
          //   child: Padding(padding: EdgeInsets.all(15),
          //   child: Row(
          //     children: [],
          //   ),
          //   ), 
          // )
        ],
      ),
    ),
    // padding: EdgeInsets.only(top: 8),
    //  child:  Column(
    //     children: [
    //       Material(
    //             color: Colorconstants.darkModeColor2,
    //             child: Padding(padding: EdgeInsets.all(15),
    //             child: Row(
    //               children: [
    //                 Expanded(child: Icon(Icons.light,
    //                  color: Colorconstants.mainWhite.withOpacity(0.5),
    //            size: 30,),),
    //             Text("Arun",style: TextStyle(color: Colorconstants.mainWhite,
    //       fontSize: 18,
    //       fontWeight: FontWeight.w500),),
    //               ],
    //             ),
    //             ), 
    //           ),
    //     ],
    //   )
  );

}

