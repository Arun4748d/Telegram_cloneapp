
// messaging screen
class database {

static List telegramList = [
  {
    "imageurl": "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Abhi",
    "subtitle": "where are you",
    "time": "01:10",
    "notification": "5",
  },
  {
    "imageurl": "https://images.pexels.com/photos/839011/pexels-photo-839011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "John",
    "subtitle": "Hey! Did you see my message?",
    "time": "02:15",
    "notification": "2",
  },
  {
    "imageurl": "https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Sarah",
    "subtitle": "Let’s meet tomorrow",
    "time": "03:00",
    "notification": "1",
  },
  {
    "imageurl": "https://images.pexels.com/photos/1018911/pexels-photo-1018911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Mike",
    "subtitle": "Can you send me the files?",
    "time": "04:45",
    "notification": "3",
  },
  {
    "imageurl": "https://images.pexels.com/photos/1689731/pexels-photo-1689731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Emma",
    "subtitle": "Don't forget the meeting!",
    "time": "05:30",
    "notification": "0",
  },
  {
    "imageurl": "https://images.pexels.com/photos/26384260/pexels-photo-26384260/free-photo-of-selfie-of-men-in-t-shirts.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Leo",
    "subtitle": "I’ll be late to the party.",
    "time": "06:10",
    "notification": "4",
  },
  {
    "imageurl": "https://images.pexels.com/photos/4026110/pexels-photo-4026110.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Nina",
    "subtitle": "What’s the plan for the weekend?",
    "time": "07:25",
    "notification": "2",
  },
  {
    "imageurl": "https://images.pexels.com/photos/2594832/pexels-photo-2594832.jpeg?auto=compress&cs=tinysrgb&w=400",
    "title": "Tom",
    "subtitle": "Happy Birthday!",
    "time": "08:00",
    "notification": "1",
  },
  {
    "imageurl": "https://images.pexels.com/photos/245388/pexels-photo-245388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Sophie",
    "subtitle": "Can you help me with my homework?",
    "time": "09:15",
    "notification": "3",
  },
  {
    "imageurl": "https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg",
    "title": "James",
    "subtitle": "I sent you the link.",
    "time": "10:30",
    "notification": "0",
  },
  {
    "imageurl": "https://images.pexels.com/photos/1485031/pexels-photo-1485031.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Olivia",
    "subtitle": "Let’s go shopping!",
    "time": "11:00",
    "notification": "2",
  },
  {
    "imageurl": "https://images.pexels.com/photos/10620476/pexels-photo-10620476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "David",
    "subtitle": "Check your email!",
    "time": "12:45",
    "notification": "5",
  },
  {
    "imageurl": "https://images.pexels.com/photos/2887718/pexels-photo-2887718.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Mia",
    "subtitle": "Are we still on for lunch?",
    "time": "13:30",
    "notification": "1",
  },
  {
    "imageurl": "https://images.pexels.com/photos/10319783/pexels-photo-10319783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Liam",
    "subtitle": "I need your opinion on this.",
    "time": "14:00",
    "notification": "3",
  },
  {
    "imageurl": "https://images.pexels.com/photos/2010812/pexels-photo-2010812.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Isabella",
    "subtitle": "Can we talk later?",
    "time": "15:20",
    "notification": "2",
  },
  {
    "imageurl": "https://images.pexels.com/photos/10190366/pexels-photo-10190366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Ethan",
    "subtitle": "What do you want for dinner?",
    "time": "16:35",
    "notification": "0",
  },
  {
    "imageurl": "https://images.pexels.com/photos/227288/pexels-photo-227288.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Ava",
    "subtitle": "Let's plan a trip!",
    "time": "17:50",
    "notification": "4",
  },
  {
    "imageurl": "https://images.pexels.com/photos/10138956/pexels-photo-10138956.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Oliver",
    "subtitle": "Do you need a ride?",
    "time": "18:40",
    "notification": "2",
  },
  {
    "imageurl": "https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Charlotte",
    "subtitle": "Thanks for your help!",
    "time": "19:15",
    "notification": "1",
  },
  {
    "imageurl": "https://images.pexels.com/photos/4307688/pexels-photo-4307688.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "title": "Noah",
    "subtitle": "I’ll call you later.",
    "time": "20:10",
    "notification": "3",
  },
];
}




// choose country

class datac{
  static List CountryList=[
  {
    "countryname": "India",
    "code": "+91",
    "flagcode": "IN"
  },
  {
    "countryname": "United States",
    "code": "+1",
    "flagcode": "US"
  },
  {
    "countryname": "United Kingdom",
    "code": "+44",
    "flagcode": "GB"
  },
  {
    "countryname": "Canada",
    "code": "+1",
    "flagcode": "CA"
  },
  {
    "countryname": "Australia",
    "code": "+61",
    "flagcode": "AU"
  },
  {
    "countryname": "Germany",
    "code": "+49",
    "flagcode": "DE"
  },
  {
    "countryname": "France",
    "code": "+33",
    "flagcode": "FR"
  },
  {
    "countryname": "Japan",
    "code": "+81",
    "flagcode": "JP"
  },
  {
    "countryname": "China",
    "code": "+86",
    "flagcode": "CN"
  },
  {
    "countryname": "Brazil",
    "code": "+55",
    "flagcode": "BR"
  },
  {
    "countryname": "South Africa",
    "code": "+27",
    "flagcode": "ZA"
  },
  {
    "countryname": "Russia",
    "code": "+7",
    "flagcode": "RU"
  },
  {
    "countryname": "Italy",
    "code": "+39",
    "flagcode": "IT"
  },
  {
    "countryname": "Mexico",
    "code": "+52",
    "flagcode": "MX"
  },
  {
    "countryname": "Spain",
    "code": "+34",
    "flagcode": "ES"
  },
  {
    "countryname": "Netherlands",
    "code": "+31",
    "flagcode": "NL"
  },
  {
    "countryname": "Sweden",
    "code": "+46",
    "flagcode": "SE"
  },
  {
    "countryname": "Argentina",
    "code": "+54",
    "flagcode": "AR"
  },
  {
    "countryname": "Turkey",
    "code": "+90",
    "flagcode": "TR"
  },
  {
    "countryname": "Saudi Arabia",
    "code": "+966",
    "flagcode": "SA"
  },
  {
    "countryname": "South Korea",
    "code": "+82",
    "flagcode": "KR"
  },
  ];
}




// start message screen



class startScreen{
static List<Map<String, String>> screenList = [
  {
    "imaurl": "assets/images/telegram.1024x1024.png", 
    "textH": "Telegram",
    "text1": "The world's fastest messaging app.",
    "text2": "It is free and secure.",
  },
  {
    "imaurl": "assets/images/2.jpeg",
    "textH": "Fast",
    "text1": "Telegram delivers messages", 
    "text2": "faster than any other application.",
  },
  {
    "imaurl": "assets/images/3.jpeg",
    "textH": "Free",
    "text1": "Telegram provides free unlimited",
    "text2": "cloud storage for chats and media",
  },
  {
    "imaurl": "assets/images/4.jpeg",
    "textH": "Powerful",
    "text1": "Telegram has no limits on ",
    "text2": "the size of your media and chats.",
  },
  {
    "imaurl": "assets/images/5.jpeg",
    "textH": "Secure",
    "text1": "Telegram keeps your messages safe",
    "text2": "from hacker attacks.",
  },
  {
    "imaurl": "assets/images/7.jpeg",
    "textH": "Cloud-Based ",
    "text1": "Telegram lets you access your ",
    "text2": "messages from multiple devices.",
  },
];

}


