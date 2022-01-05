import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylo_fashion/pages/Product_List_View/get_products.dart';
import 'package:stylo_fashion/pages/cart.dart';
import 'package:stylo_fashion/pages/order_payment/delivery_address.dart';
import 'package:stylo_fashion/pages/product/product_details.dart';
import 'package:stylo_fashion/pages/wishlist.dart';

// My Own Imports

class ProductPage extends StatefulWidget {
  final PassDataToProduct productData;

  ProductPage({Key key, this.productData}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool favourite = false;
  int cartItem = 3;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.productData.title,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Jost',
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Badge(
              badgeContent: Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              badgeColor: Theme.of(context).primaryColorLight,
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishlistPage()),
              );
            },
          ),
          IconButton(
            icon: Badge(
              badgeContent: Text(
                '$cartItem',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              badgeColor: Theme.of(context).primaryColorLight,
              child: Icon(
                FontAwesomeIcons.shoppingBag,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft, child: CartPage()));
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF1F3F6),
      body: ProductDetails(data: widget.productData),
      bottomNavigationBar: Material(
        elevation: 5.0,
        child: Container(
          color: Colors.white,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    cartItem++;
                  });
                },
                child: Container(
                  width: ((width) / 2),
                  height: 50.0,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    'ADD TO BAG',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontFamily: 'Jost',
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Delivery()));
                },
                child: Container(
                  width: ((width) / 2),
                  height: 50.0,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontFamily: 'Jost',
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
