import 'package:flutter/material.dart';


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(

            title: Image.network(
              image_location,
              height: 65.0,
              width: 120.0,
            ),
            subtitle: Container(
              margin: EdgeInsets.only(top: 10.0),
              alignment: Alignment.topCenter,
              child: Text(image_caption,style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.normal,

              ),
              ),
            ),
          ),
        ),
      ),

    );

  }
}
