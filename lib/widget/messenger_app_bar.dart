import 'package:flutter/material.dart';

class MessengerAppBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MessengerAppBar();
  }
}

class _MessengerAppBar extends State<MessengerAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8,15,8,5),
      child: Row(
        children: [
          Center(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/kvc.jpg"),
                ),
              ),
            ),
          ),
          //test git hub
          Container(
            width: 20,
          ),
          Text(
            "Chats",
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            width: 90,
            height: 60,
          ),
          Container(
            height: 60,
            width: 50,
            child: Icon(Icons.camera_alt),
          ),
          Container(
            height: 60,
            width: 50,
            child: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
