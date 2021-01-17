import 'package:e_commerceapp/Categories/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'id':'1',
      'name': 'Blazer',
      'image': 'https://i.ebayimg.com/images/g/9UcAAOSw2cZbSEun/s-l300.jpg',
      'old_price': "1500 tk",
      'price': '1100 tk',
    },
    {
      'id':'2',
      'name': 'Red Dress',
      'image':
          'https://fnug.com/wp-content/uploads/what-nail-colour-goes-best-with-red-dress.jpg',
      'old_price': "2500 tk",
      'price': '1500 tk',
    },
    {
      'id':'3',
      'name': 'Pent',
      'image':
          'https://img3.exportersindia.com/product_images/bc-full/2019/3/4325298/new-style-jeans-pent-men-1551524893-4762748.jpeg',
      'old_price': "1990 tk",
      'price': '1590 tk',
    },
    {
      'id':'4',
      'name': 'Shoes',
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/41Leu3gBUFL.jpg',
      'old_price': "3590 tk",
      'price': '1590 tk',
    },
    {
      'id':'5',
      'name': 'ledies ',
      'image':
          'https://www.shoezone.com/Images/Static/HubContent/Heels.jpg',
      'old_price': "990 tk",
      'price': '590 tk',
    },
    {
      'id':'6',
      'name': 'Tops                                                                                                                                                                                                                                           ',
      'image':
          'https://4.imimg.com/data4/PW/MN/ANDROID-37023138/product-500x500.jpeg',
      'old_price': "990 tk",
      'price': '590 tk',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return SingleProducts(
            product_name: product_list[index]['name'],
            product_image: product_list[index]['image'],
            product_oldPrice: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class SingleProducts extends StatelessWidget {

  final product_id;
  final product_name;
  final product_image;
  final product_oldPrice;
  final product_price;

  SingleProducts({
    this.product_id,
    this.product_name,
    this.product_image,
    this.product_oldPrice,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails(
                  product_id: product_id,
                  product_name: product_name,
                  product_image: product_image,
                  product_oldPrice: product_oldPrice,
                  product_price: product_price,
                )
                )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    product_price,
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    product_oldPrice,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.network(
                product_image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
