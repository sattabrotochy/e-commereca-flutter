import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerceapp/Categories/cart.dart';
import 'package:e_commerceapp/Categories/categories.dart';
import 'package:e_commerceapp/Categories/horizontal.dart';
import 'package:e_commerceapp/Categories/products.dart';
import 'package:flutter/material.dart';
import './Categories/horizontal.dart';

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
  Widget image_All = new Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      indicatorBgPadding: 10.0,
      images: [
        NetworkImage(
            'https://cdn2.momjunction.com/wp-content/uploads/2015/01/How-To-Wash-Baby-Clothes.jpg'),
        NetworkImage(
            'https://www.babycouture.in/blog/wp-content/uploads/2015/10/8126446_orig.jpg'),
        NetworkImage(
            'https://m.media-amazon.com/images/G/31/img19/Fashion/WA19/DressStore_Sobe/updates/a-line._SS680_QL85_.jpg'),
        NetworkImage(
            'https://image.shutterstock.com/image-photo/handsome-casual-man-standing-arms-260nw-485380684.jpg'),
        NetworkImage(
            'https://images-na.ssl-images-amazon.com/images/I/711O4p6EYIL._UX569_.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 5.0,
      dotColor: Colors.redAccent,
    ),
  );

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
          image_All,
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
