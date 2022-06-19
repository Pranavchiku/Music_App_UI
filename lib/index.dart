import 'package:flutter/material.dart';
import 'package:music_app/login.dart';
import 'package:music_app/widget/navBar.dart';
import 'package:music_app/widget/musicCard.dart';
import 'package:music_app/widget/themeCard.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Browse",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 26,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: size.height * 0.2,
            top: size.height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ThemeCard(
                      imagePath: 'assets/party.jpg',
                      themeText: 'Party',
                    ),
                    SizedBox(width: 20),
                    ThemeCard(
                      imagePath: 'assets/romance.jpg',
                      themeText: 'Romance',
                    ),
                    SizedBox(width: 20),
                    ThemeCard(
                      imagePath: 'assets/party.jpg',
                      themeText: 'Party',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Playlist",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 40),
              musicCard(
                musicName: "Don't say sorry..",
                musicAuthor: "Justin",
                musicDuration: "2.38",
              ),
              SizedBox(height: 30),
              musicCard(
                musicName: "why back home",
                musicAuthor: "Shaun",
                musicDuration: "1:50",
              ),
              SizedBox(height: 30),
              musicCard(
                musicName: "The Nights",
                musicAuthor: "Avicii",
                musicDuration: "2:38",
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: navBar(),
    );
  }
}
