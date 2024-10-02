import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/main.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:telegram_cloneapp/view/homeScreen_light/homeScreen_light.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor:    const Color.fromARGB(255, 225, 224, 224),
      body: CustomScrollView(
         slivers: [
      SliverAppBar.medium(
  backgroundColor: Colorconstants.blue2,
  leading: IconButton(
    onPressed: () {
      Navigator.pop(context, MaterialPageRoute(builder: (context) => Homescreen_light(),));
    }, 
    icon: Icon(Icons.arrow_back, color: Colorconstants.mainWhite),
    
  ),
  title: Row(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage("https://example.com/avatar.jpg"),
      ),
      SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                    Text('Arun', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,
                    color: Colorconstants.mainWhite)),
          Text('online', style: TextStyle(fontSize: 16, color: Colorconstants.mainWhite.withOpacity(0.7))),
        ],
      )
    ],
  ),
  actions: [
    Icon(Icons.qr_code_outlined, color: Colorconstants.mainWhite, size: 23),
    SizedBox(width: 20),
    Icon(Icons.search, color: Colorconstants.mainWhite, size: 23),
    SizedBox(width: 15),
    Icon(Icons.more_vert_outlined, color: Colorconstants.mainWhite, size: 23),
    SizedBox(width: 15),
  ],
  expandedHeight: 120,
  floating: false,
  pinned: true,

),
          SliverToBoxAdapter(
            child: Container(
         
              width: double.infinity,
              color: Colorconstants.mainWhite,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 22,)),
                  Icon(Icons.add_a_photo_outlined,color: Colorconstants.blue3,),
                  SizedBox(width: 14,),
                  Text("Set Profile Photo",style: TextStyle(
                    color: Colorconstants.blue3,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),)
                ],
              ),
              ),
          ),
            SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                padding: EdgeInsets.only(left:18.6,top: 16,bottom: 10 ),
                width: double.infinity,
                  color: Colorconstants.mainWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Account",style: TextStyle(
                        color: Colorconstants.blue3,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 6),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("+91 $phoneno",style: TextStyle(
                            color: Colorconstants.mainblack,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),),
                          Text("Tap to change phone number",style: TextStyle(
                            color: Colorconstants.mainblack.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                     Divider(),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("@shbjjsj1234",style: TextStyle(
                                 color: Colorconstants.mainblack,
                                 fontWeight: FontWeight.w500,
                                 fontSize: 16
                               ),),
                               Text("Username",style: TextStyle(
                                 color: Colorconstants.mainblack.withOpacity(0.6),
                                 fontWeight: FontWeight.w500,
                               ),),
                             ],
                           ),
                          Divider(),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Bio",style: TextStyle(
                                 color: Colorconstants.mainblack,
                                 fontWeight: FontWeight.w500,
                                 fontSize: 16,
                               ),),
                               Text("Add a few words about yourself",style: TextStyle(
                                 color: Colorconstants.mainblack.withOpacity(0.6),
                                 fontWeight: FontWeight.w500,
                               ),),
                             ],
                           ),


                    ],
                  ),
                ),
            ),
          ),
          
            SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                  padding: EdgeInsets.only(left:18.6,top: 16,bottom: 10, ),
                width: double.infinity,
                  color: Colorconstants.mainWhite,
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Settings",style: TextStyle(
                              color: Colorconstants.blue3,
                              fontSize: 15.5,
                              fontWeight: FontWeight.w600,
                            ),),
                          ],
                        ),
                        SizedBox(height: 15.5,),
                        Row(
                          children: [
                            Icon(Icons.chat_bubble_outline),
                            SizedBox(width: 13,),
                            Text("Chat Settings",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                           Row(
                          children: [
                            Icon(Icons.https_outlined ),
                            SizedBox(width: 13,),
                            Text("Privacy and Security",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                           Row(
                          children: [
                            Icon(Icons.notifications_outlined),
                            SizedBox(width: 13,),
                            Text("Notification and Sounds",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                           Row(
                          children: [
                            Icon(Icons.data_array,),
                            SizedBox(width: 13,),
                            Text("Data and Storage",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                           Row(
                          children: [
                            Icon(Icons.chat_bubble_outline),
                            SizedBox(width: 13,),
                            Text("Power Saving",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                           Row(
                          children: [
                            Icon(Icons.folder_outlined),
                            SizedBox(width: 13,),
                            Text("Chat Folder",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                           Row(
                          children: [
                            Icon(Icons.devices_outlined),
                            SizedBox(width: 13,),
                            Text("Devices",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                           Row(
                          children: [
                            Icon(Icons.language_outlined),
                            SizedBox(width: 13,),
                            Text("Language",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.6),
                                  child: Text("English",
                                  style: TextStyle(
                                    color: Colorconstants.blue3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                )
                          ],
                        ),
                       
                      ]
                  ),
                      
                ),
            )
               
          ),
       
            SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                  padding: EdgeInsets.only(left:18.6,top: 16,bottom: 10, ),
                width: double.infinity,
              
                  color: Colorconstants.mainWhite,
                       child:  Column(
                          children: [
                            Row(
                                children: [
                                  Icon(Icons.chat_bubble_outline),
                                  SizedBox(width: 13,),
                                  Text("Telegram Premium",style: TextStyle(
                                        color: Colorconstants.mainblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),)
                                ],
                              ),
                              Divider(),
                                  Row(
                                children: [
                                  Icon(Icons.chat_bubble_outline),
                                  SizedBox(width: 13,),
                                  Text("My Stars",style: TextStyle(
                                        color: Colorconstants.mainblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),)
                                ],
                              ),
                              Divider(),
                                  Row(
                                children: [
                                  Icon(Icons.chat_bubble_outline),
                                  SizedBox(width: 13,),
                                  Text("Telegram Business",style: TextStyle(
                                        color: Colorconstants.mainblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),),
                                      SizedBox(width: 8,),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 3.5,vertical: 1.8),
                                        decoration: BoxDecoration(
                                          color: Colorconstants.blue3,
                                          borderRadius: BorderRadius.circular(5.4),
                                        ),
                                        child: Text("NEW",style: TextStyle(
                                          color: Colorconstants.mainWhite,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 9.4,
                                        ),),
                                      ),
                                ],
                              ),
                              Divider(),
                                  Row(
                                children: [
                                  Icon(Icons.card_giftcard_outlined),
                                  SizedBox(width: 13,),
                                  Text("Gift Premium",style: TextStyle(
                                        color: Colorconstants.mainblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),)
                                ],
                              ),
                              
                              
                          ],
                        ),
                        
              
                ),
            ),
              ),

          
                SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                  padding: EdgeInsets.only(left:18.6,top: 16,bottom: 10, ),
                width: double.infinity,
                  color: Colorconstants.mainWhite,
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Help",style: TextStyle(
                              color: Colorconstants.blue3,
                              fontSize: 15.5,
                              fontWeight: FontWeight.w600,
                            ),),
                          ],
                        ),
                        SizedBox(height: 15.5,),
                        Row(
                          children: [
                            Icon(Icons.chat_outlined),
                            SizedBox(width: 13,),
                            Text("Ask a Question",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                              Row(
                          children: [
                            Icon(Icons.help_outline),
                            SizedBox(width: 13,),
                            Text("Telegram FAQ",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        Divider(),
                              Row(
                          children: [
                            Icon(Icons.gpp_good_outlined ),
                            SizedBox(width: 13,),
                            Text("Privacy POlicy",style: TextStyle(
                                  color: Colorconstants.mainblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),)
                          ],
                        ),
                        
                 
                       
                      ]
                  ),
                      
                ),
            )
               
          ),
       
            SliverToBoxAdapter(
      
            child: Container(
            height: 70,
          
              width: double.infinity,
              child: Column(
                children: [
                  Text("Telegram for Android v11.1.3(5244)store bundled ",
                  style: TextStyle(color: Colorconstants.mainblack.withOpacity(0.6,),


                  ),)
                ],
              ),

        
              ),
          ),
         ],
      ),
    );
  }
}