import 'package:flutter/material.dart';
import 'package:music_app/widget/playCard.dart';

class MusicPlay extends StatefulWidget {
  const MusicPlay({Key? key}) : super(key: key);

  @override
  State<MusicPlay> createState() => _MusicPlayState();
}

class _MusicPlayState extends State<MusicPlay> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: size.height * 0.2,
            top: size.height * 0.03,
          ),
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Play Music",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  height: size.height / 3.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(
                        "assets/party.jpg",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  "Young and Beautiful",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "LoX Mornado",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 60),
              playCard(),
            ],
          ),
        ),
      ),
    );
  }
}
