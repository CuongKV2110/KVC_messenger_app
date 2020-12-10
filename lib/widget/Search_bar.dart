import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200
      ),
      child: Row(
        children: [
          Container(width: 10,),
          Icon(Icons.search),
          Container(width: 10,),
          Expanded(child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search"
            ),
          ))
        ],
      ),
    );
  }
}

