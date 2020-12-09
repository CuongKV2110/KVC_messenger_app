import 'package:flutter/material.dart';
import 'package:flutter_appmessengerapp/widget/Stories.dart';
import 'package:flutter_appmessengerapp/widget/messenger_app_bar.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("People"),
          ),
        ],
      ),
      body: Column(
        children: [
          MessengerAppBar(),
          Container(
            height: 100,
            child: Stories(),
          )
        ],
      )
    );
  }
}