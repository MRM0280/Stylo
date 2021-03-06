import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylo_fashion/pages/Product_List_View/get_products.dart';
import 'package:stylo_fashion/pages/cart.dart';
import 'package:stylo_fashion/pages/search.dart';
import 'package:stylo_fashion/pages/wishlist.dart';

class ProductListView extends StatefulWidget {
  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'PRODUCTS',
              style: TextStyle(
                fontFamily: 'Jost',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                letterSpacing: 1.7,
                color: Colors.black,
              ),
            ),
            Text(
              '37024 ITEMS',
              style: TextStyle(
                fontFamily: 'Jost',
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                letterSpacing: 1.5,
                color: Colors.grey,
              ),
            )
          ],
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
              );
            },
          ),
          IconButton(
            icon: Badge(
              badgeContent: Text(
                '2',
                style: TextStyle(color: Colors.white),
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
                '3',
                style: TextStyle(color: Colors.white),
              ),
              badgeColor: Theme.of(context).primaryColorLight,
              child: Icon(
                FontAwesomeIcons.shoppingBag,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: CartPage()));
            },
          ),
        ],
      ),
      body: GetProducts(),
    );
  }
}
