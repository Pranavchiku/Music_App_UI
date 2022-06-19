import 'package:flutter/material.dart';
import 'package:music_app/musicPlay.dart';

class musicCard extends StatefulWidget {
  String? musicName;
  String? musicAuthor;
  String? musicDuration;

  musicCard(
      {required this.musicName,
      required this.musicAuthor,
      required this.musicDuration});
  @override
  State<musicCard> createState() => _musicCardState();
}

class _musicCardState extends State<musicCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.music_note,
          color: Colors.black,
          size: 40,
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.musicName!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
            Text(
              widget.musicAuthor!,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        Spacer(),
        Text(
          widget.musicDuration!,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.play_arrow,
            size: 35,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MusicPlay()));
          },
        ),
      ],
    );
  }
}
