import 'package:flutter/material.dart';

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Send Money",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                height: 105,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    sendMoney(
                      "assets/images/users/anna.jpeg",
                      "Anna",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    sendMoney(
                      "assets/images/users/gillian.jpeg",
                      "Gillian",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    sendMoney(
                      "assets/images/users/judith.jpeg",
                      "Judith",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    sendMoney(
                      "assets/images/users/judith.jpeg",
                      "Judith",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container sendMoney(String imageName, String userName) {
    return Container(
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage(imageName), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Text(
                userName,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
