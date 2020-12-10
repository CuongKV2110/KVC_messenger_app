import 'package:flutter/material.dart';
import 'package:flutter_appmessengerapp/widget/add_story.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if(index == 0){
          return Add_Story();
        }
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
              height: 55,
              width: 55,
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
            Container(
              height: 8,
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
