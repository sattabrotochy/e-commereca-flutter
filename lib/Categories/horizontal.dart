import 'package:e_commerceapp/Categories/categories.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location:
                "https://mockup-api.teespring.com/v3/image/aIA0YpF_TU4U3plRWXKNayWAjGw/480/560.jpg",
            image_caption: "T-Shirt",
          ),
          Category(
            image_location:
                "https://media2.s-nbcnews.com/j/newscms/2017_29/1229402/traveling-dress-today-inline-170718_813c195488099d4eeb6f0a91b296dae7.fit-720w.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location:
                "https://5.imimg.com/data5/PA/CX/MY-5846131/nero-jeans-pent-500x500.png",
            image_caption: "Pent",
          ),
          Category(
            image_location:
                "https://img5.cfcdn.club/7b/01/7b98acc128847d82a620e1653329d601_350x350.jpg",
            image_caption: "Shart",
          ),
          Category(
            image_location:
                "https://5.imimg.com/data5/XU/AH/MY-32275747/corporate-uniform-500x500.jpg",
            image_caption: "blazer ",
          ),
          Category(
            image_location:
                "https://static-01.daraz.com.bd/p/11284d595dda5a1a944202be32c2441b.jpg_340x340q80.jpg_.webp",
            image_caption: "ledies bag ",
          ),
        ],
      ),
    );
  }
}
