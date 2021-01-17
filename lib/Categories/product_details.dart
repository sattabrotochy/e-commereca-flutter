import 'package:e_commerceapp/Categories/products.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_id;
  final product_name;
  final product_image;
  final product_oldPrice;
  final product_price;

  ProductDetails({
    this.product_id,
    this.product_name,
    this.product_image,
    this.product_oldPrice,
    this.product_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(widget.product_name),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: (Image.network(widget.product_image)),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.product_oldPrice,
                          style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          widget.product_price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              // ========================button===========================//
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('size'),
                            content: Text('Chose the size'),
                            actions: [
                              MaterialButton(
                                child: Text('Close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              // =====================button===========================//
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Chose the color'),
                            actions: [
                              MaterialButton(
                                child: Text('Close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              // ======================button===========================//
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Qty'),
                            content: Text('Chose the Quantity'),
                            actions: [
                              MaterialButton(
                                child: Text('Close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  textColor: Colors.grey,
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.redAccent,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.redAccent,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text(
              'Product Details',),
            subtitle: Text(
              'A design is a plan or specification for the construction of an object or system or for the implementation of an activity or process, or the result of that plan or specification in the form of a prototype, product or process. The verb to design expresses the process of developing a design. In some cases, the direct construction of an object without an explicit prior plan (such as in craftwork, some engineering, coding, and graphic design) may also be considered to be a design activity.'
            ),
          ),
          Divider(),


          //=========================product name=============================
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  'Product Name',
                  style: TextStyle(
                    color: Colors.grey,

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.product_name),

              ),
            ],
          ),


          //============================= product brand ===================
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  'Product Brand',
                  style: TextStyle(
                    color: Colors.grey,

                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Syntaxive"),

              ),
            ],
          ),

          //=============================== product condition ============================

          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  'Product condition ',
                  style: TextStyle(
                    color: Colors.grey,

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("New"),

              ),
            ],
          ),
        ],
      ),
    );
  }
}


//
// class SingleProducts extends StatelessWidget {
//
//   final product_id;
//   final product_name;
//   final product_image;
//   final product_oldPrice;
//   final product_price;
//
//   SingleProducts({
//     this.product_id,
//     this.product_name,
//     this.product_image,
//     this.product_oldPrice,
//     this.product_price,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Hero(
//         tag: product_name,
//         child: Material(
//           child: InkWell(
//             onTap: () => Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => ProductDetails(
//                   product_id: product_id,
//                   product_name: product_name,
//                   product_image: product_image,
//                   product_oldPrice: product_oldPrice,
//                   product_price: product_price,
//                 )
//                 )),
//             child: GridTile(
//               footer: Container(
//                 color: Colors.white70,
//                 child: ListTile(
//                   leading: Text(
//                     product_name,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   title: Text(
//                     product_price,
//                     style: TextStyle(
//                         color: Colors.redAccent, fontWeight: FontWeight.w800),
//                   ),
//                   subtitle: Text(
//                     product_oldPrice,
//                     style: TextStyle(
//                       color: Colors.black54,
//                       fontWeight: FontWeight.w800,
//                       decoration: TextDecoration.lineThrough,
//                     ),
//                   ),
//                 ),
//               ),
//               child: Image.network(
//                 product_image,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
