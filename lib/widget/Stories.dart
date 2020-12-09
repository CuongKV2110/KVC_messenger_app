import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return StoriesList();
      },
      itemCount: 20,
      scrollDirection: Axis.horizontal,
    );
  }
}

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/kvc.jpg"),
                ),
              ),
            ),
            Text("KVC")
          ],
        ),
        Container(
          width: 5,
        )
      ],
    );
  }
}
