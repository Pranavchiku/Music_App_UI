import 'package:flutter/material.dart';

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.home, color: Colors.black),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: Icon(Icons.person, color: Colors.black),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: Icon(Icons.logout, color: Colors.black),
          //   onPressed: () {},
          // ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Mood",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Artists",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Podcasts",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
