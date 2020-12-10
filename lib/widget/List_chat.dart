import 'package:flutter/material.dart';

class ListChat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListChat();
  }
}

class _ListChat extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(5,0,5,8),
          child: ListChatItem(),
        );
      },
      itemCount: 50,
    );
  }
}

class ListChatItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListChatItem();
  }
}

class _ListChatItem extends State<ListChatItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildImage(),
        _buildNameandDate(),
      ],
    );
  }

  _buildImage() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/kvc.jpg"),
        ),
      ),
    );
  }

  _buildNameandDate() {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          Row(
            children: [
              _buildDate(),
              Container(width: 4),
              _buildSpace(),
              Container(width: 4),
              _buildTime(),
            ],
          )
        ],
      ),
    );
  }

  _buildTitle() {
    return Text(
      "Kiều Văn Cường",
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _buildDate() {
    return Text(
      "Hello",
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  _buildTime() {
    return Text(
      "22:03",
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }
  _buildSpace(){
    return Text(
      ".",
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

}
