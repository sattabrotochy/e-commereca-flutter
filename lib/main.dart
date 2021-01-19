import 'dart:convert';
import 'package:e_commerceapp/Categories/cart.dart';
import 'package:e_commerceapp/Categories/horizontal.dart';
import 'package:e_commerceapp/Categories/products.dart';
import 'package:e_commerceapp/Services/service.dart';
import 'package:e_commerceapp/widget/carousel%20_slider.dart';
import 'package:flutter/material.dart';
import './Categories/horizontal.dart';


import 'package:http/http.dart' as http;

import 'Categories/model/model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var item=[];
  @override
  initState()
  {
    super.initState();
    getAllSlider();
  }

  SliderService _sliderService=SliderService();


  getAllSlider()async{
    var sliders=await _sliderService.getSlider();
    var result=json.decode(sliders.body);

   setState(() {
     try{
       result['AllPost'].forEach((data){
         item.add(NetworkImage(data['image']));
       });
     }
     catch(error)
     {
       print(error.toString());
     }

   });
    print(item);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('ShopApp'),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Shuvo"),
              accountEmail: Text('Shuvo@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                trailing: Icon(
                  Icons.home,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                trailing: Icon(
                  Icons.account_circle,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                trailing: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>CartScreen()));
              },
              child: ListTile(
                title: Text('Cart'),
                trailing: Icon(
                  Icons.shopping_cart,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('LogOut'),
                trailing: Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                trailing: Icon(
                  Icons.settings,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                trailing: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          carouselSlider(item),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          HorizontalList(),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recent Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          Container(
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}
