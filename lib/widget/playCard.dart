import 'package:flutter/material.dart';

class playCard extends StatelessWidget {
  const playCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 200,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "0:00",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "04:20",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          // Text(
          //   "Progress Bar Here",
          //   style: TextStyle(
          //     color: Colors.black54,
          //     fontWeight: FontWeight.w400,
          //     fontSize: 18,
          //   ),
          // ),
          Divider(
            indent: 30,
            endIndent: 30,
            thickness: 10,
            color: Colors.black,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_sharp),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.pause_circle,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shuffle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
