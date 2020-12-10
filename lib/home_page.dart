import 'package:flutter/material.dart';
import 'widget/List_chat.dart';
import 'package:flutter_appmessengerapp/widget/Search_bar.dart';
import 'package:flutter_appmessengerapp/widget/Stories.dart';
import 'package:flutter_appmessengerapp/widget/messenger_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
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
            _buildRootListView(),
          ],
        ));
  }

  // _buildRootListView() {
  //   return Expanded(
  //     child: ListView.builder(
  //       itemBuilder: (context, index) {
  //         if (index == 0) {
  //           return Padding(
  //             padding: EdgeInsets.all(8),
  //             child: SearchBar(),
  //           );
  //         } else if (index == 1) {
  //           return Container(
  //             height: 100,
  //             child: Padding(
  //               padding: EdgeInsets.only(left: 8, top: 8),
  //               child: Stories(),
  //             ),
  //           );
  //         } else {
  //           return Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: ListChat(),
  //           );
  //         }
  //       },
  //       itemCount: 21,
  //     ),
  //   );
  // }

  _buildRootListView() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.fromLTRB(8,0,8,8),
              child: SearchBar(),
            );
          } else if (index == 1) {
            return Container(
              height: 100,
              child: Padding(
                padding: EdgeInsets.only(left: 8, top: 8),
                child: Stories(),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListChatItem(),
            );
          }
        },
      ),
    );
  }
}
