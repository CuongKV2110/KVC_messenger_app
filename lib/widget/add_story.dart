import 'package:flutter/material.dart';

class Add_Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 60,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          child: Icon(
            Icons.add,
            size: 35,
          ),
        ),
        Container(
          height: 8,
        ),
        Text(
          "Your Story",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
