import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  @override
  Widget build(BuildContext context) {





    return ListView.builder(

      itemCount: 3,
      itemBuilder: (context, index){
     return Text('da');
      },
    );
  }
}


