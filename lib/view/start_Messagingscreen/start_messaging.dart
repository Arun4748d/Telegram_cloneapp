import 'package:flutter/material.dart';
import 'package:telegram_cloneapp/database.dart';
import 'package:telegram_cloneapp/utils/constants/colorConstants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:telegram_cloneapp/view/loginScreen.dart/choose_country.dart';


class StartMessaging extends StatefulWidget {
  const StartMessaging( {super.key});



  @override
  State<StartMessaging> createState() => _StartMessagingState();
}

class _StartMessagingState extends State<StartMessaging> {
  final _controller =PageController();

   void _startscreen(int index){
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => ChooseCountry(
        countryname:datac.CountryList[index]["countryname"],
           code:datac.CountryList[index]["code"],
            flagcode:datac.CountryList[index]["flagcode"],
      ),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.dark_mode),SizedBox(width: 20,)],
      backgroundColor: Colorconstants.mainWhite,
      ),
      backgroundColor: Colorconstants.mainWhite,
      body: 
// pageview.bulder section
      Column(
        children: [
          Expanded(
            flex: 1,
            child: PageView.builder(
              itemCount:startScreen.screenList.length,
              controller: _controller,
              itemBuilder: ( context, index) =>   telegram_intro_screen(
                         startScreen.screenList[index]["imaurl"]!,
                         startScreen.screenList[index]["textH"]!,
                         startScreen.screenList[index]["text1"]!,
                         startScreen.screenList[index]["text2"]!,
              ),
              ),
            ),
          
              Expanded(
                flex: 1,
                child: Column(
                  children: [
   SmoothpageIndicator_Section(),
   SizedBox(height:50 ),
                 
   StartMessagingButton_section(),     
                  ],
                ),
              ), 
        ],
      ),   
    );
  }



  

  GestureDetector StartMessagingButton_section() {
    return GestureDetector(
                        onTap: () => _startscreen(0),
                         child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 78,vertical: 12,),
                          decoration: BoxDecoration(
                                color: Colorconstants.blue4,
                                borderRadius: BorderRadius.circular(9),
                                     ),
                                child: Text("Start Meassaging",style: TextStyle(
                                color: Colorconstants.mainWhite,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.5,
                                     ),),
                                   ),
                       );
  }

  Container SmoothpageIndicator_Section() {
    return Container(
              padding: EdgeInsets.only(bottom: 155,),
               child: Transform.scale(
                  scale: 0.38,
                  child: SmoothPageIndicator( 
                    controller:_controller,
                    count: 6,
                    effect: WormEffect(
                      activeDotColor: Colorconstants.blue3,
                    ),
                    ),
                  ),
                );
  }

  Container telegram_intro_screen
  (String imaurl, String textH, String text1, String text2,  ) {
    return Container(  
      child:
       Column(   
       children: [  
         SizedBox(height: 119,),
   //  imagee
         Container(
           height: 123,
           width: 123,
           decoration: BoxDecoration(
             image: DecorationImage(image: 
             AssetImage(imaurl),
             fit: BoxFit.cover)
           ),
         ),
         SizedBox(height: 17,),
 //  HeaderText
         Text(textH,style: TextStyle(
                  color: Colorconstants.mainblack,
           fontWeight: FontWeight.w600,
           fontSize: 20,
         ),),
         SizedBox(height: 8,),
//  Text1
         Text(text1,style: TextStyle(
           color: Colorconstants.mainblack.withOpacity(0.55),
           fontWeight: FontWeight.bold,
         ),),
//  Text2
         Text(text2,style: TextStyle(
           color: Colorconstants.mainblack.withOpacity(0.55),
           fontWeight: FontWeight.bold,
       
         ),
         ),
         
       ],
       ),
    );
    
  }
}