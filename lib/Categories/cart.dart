import 'package:e_commerceapp/Categories/cart_products.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Cart'),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),

        ],
      ),

      body: CartProducts(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text(
                'Total'
              ),
              subtitle: Text(
                '1650 tk'
              ),
            ),

            ),
            Expanded(child: MaterialButton(onPressed: (){

            },
            child: Text('check out',
            style: TextStyle(color: Colors.white),
            ),
              color: Colors.red,

            ))
          ],
        ),
      ),
    );
  }
}
