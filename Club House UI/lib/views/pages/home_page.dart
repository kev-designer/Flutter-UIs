import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Color(0xffE7E4D3),
      backgroundColor: Color(0xffF1EFE4),
      appBar: AppBar(
        backgroundColor: Color(0xffF1EFE4),
        elevation: 0,
        leading: Icon(
          Icons.search,
          size: height * .034,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.mark_email_unread_outlined,
                  size: height * .034,
                  color: Colors.black,
                ),
                const SizedBox(width: 24.0),
                Icon(
                  Icons.calendar_today_outlined,
                  size: height * .03,
                  color: Colors.black,
                ),
                const SizedBox(width: 24.0),
                Icon(
                  Icons.notifications_none,
                  size: height * .034,
                  color: Colors.black,
                ),
                const SizedBox(width: 24.0),
                SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      "assets/zeus.jpg",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  //STATUS CARD
                  Container(
                    height: height * .2,
                    decoration: BoxDecoration(
                      color: Color(0xffE7E4D3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              timeText(
                                height,
                                "5:00 PM",
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  statusText(
                                    height,
                                    "THE NEW US 😎🤓",
                                  ),
                                  desText(
                                    height,
                                    "America",
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              timeText(
                                height,
                                "5:15 PM",
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  statusText(
                                    height,
                                    "🖐 This is the Emoji list page of the",
                                  ),
                                  desText(
                                    height,
                                    "America",
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              timeText(
                                height,
                                "5:30 PM",
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  statusText(
                                    height,
                                    "🤓 to main category 👌 ",
                                  ),
                                  desText(
                                    height,
                                    "America",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),

                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                  //WHITE CARD DO WITH GETX
                  Container(
                    height: height * .22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          groupName(
                            height,
                            "Elon Musk is The Richest Human Now 💰 💰 🤑 🤯",
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * .07,
                                width: width * .15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/zeus.jpg",
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  memberName(
                                    height,
                                    "Zeus 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Alex 💬",
                                  ),
                                  memberName(
                                    height,
                                    "Kevin Smith 💬",
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Row(
                                    children: [
                                      onlineUsers(
                                        height,
                                        "10",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      onlineUsers(
                                        height,
                                        "5",
                                      ),
                                      SizedBox(
                                        width: width * .01,
                                      ),
                                      Icon(
                                        Icons.chat_bubble,
                                        color: Color(0xff999999),
                                        size: height * .022,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .024),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _BottomBar(),
          ),
        ],
      ),
    );
  }

  Text desText(double height, String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: height * .018,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text statusText(double height, String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: height * .014,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text timeText(double height, String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: height * .016,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Text groupName(double height, String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: height * .018,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Text memberName(double height, String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: height * .018,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text onlineUsers(double height, String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: height * .016,
        color: Color(0xff999999),
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _BottomBar extends StatefulWidget {
  @override
  __BottomBarState createState() => __BottomBarState();
}

class __BottomBarState extends State<_BottomBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    _bottomSheet(context) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext c) {
            return Container(
              height: height * .62,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
                child: Column(
                  children: [
                    Container(
                      height: height * .01,
                      width: width * .12,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    SizedBox(
                      height: height * .016,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "+ Add a Topic",
                        style: TextStyle(
                          fontSize: height * .018,
                          color: Color(0xff39ab64),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return Container(
      height: height * .14,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Center(
            child: Container(
              height: height * .064,
              width: width * .5,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                onPressed: () {
                  _bottomSheet(context);
                },
                elevation: 0,
                color: Color(0xff39ab64),
                textColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: height * .04,
                      ),
                      SizedBox(
                        width: width * .02,
                      ),
                      Text(
                        "Start a room",
                        style: TextStyle(
                          fontSize: height * .022,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                height: height * .04,
                width: width * .09,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowOfDots,
                    rowOfDots,
                    rowOfDots,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final rowOfDots = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    dot,
    dot,
    dot,
  ],
);

final Widget dot = Container(
  width: 8.0,
  height: 8.0,
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(100.0),
  ),
);
