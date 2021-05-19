import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      "All",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Recieved",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Sent",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  width: 138,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "23 june 2021",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
            ),
            Container(
              child: Container(
                height: 110,
                child: ListView(
                  padding: EdgeInsets.only(top: 15),
                  scrollDirection: Axis.vertical,
                  children: [
                    historyMethod(
                        "Amazon Bill", "07-01-2020", "20:34", "-\$ 200.78"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    historyMethod(
                        "Jio Recharge", "07-01-2020", "20:34", "-\$ 200.78"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    historyMethod("Ligth Bill Recharge", "07-01-2020", "20:34",
                        "-\$ 200.78"),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
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

  Container historyMethod(
      String labelName, String date, String time, String price) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Container(
          //   height: 40,
          //   width: 40,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(100),
          //     color: Colors.orangeAccent,
          //   ),
          // ),
          // SizedBox(
          //   width: 10,
          // ),
          Container(
            child: Column(
              children: [
                Text(
                  labelName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          time,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 90,
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
