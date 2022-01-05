import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stylo_fashion/pages/Category/category_main.dart';
import 'package:stylo_fashion/pages/cart.dart';
import 'package:stylo_fashion/pages/faq_and_about_app/about_app.dart';
import 'package:stylo_fashion/pages/faq_and_about_app/faq.dart';
import 'package:stylo_fashion/pages/login_signup/login.dart';
import 'package:stylo_fashion/pages/my_account/my_account.dart';
import 'package:stylo_fashion/pages/my_orders.dart';
import 'package:stylo_fashion/pages/notification.dart';
import 'package:stylo_fashion/pages/wishlist.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Logout AlertDialog Start Here
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text(
              "Confirm",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Text("Are you Sure you want to Logout?"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              TextButton(
                child: Text(
                  "Close",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),

              TextButton(
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          );
        },
      );
    }
    // Logout AlertDialog Ends Here

    return Drawer(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/logo/stylo_logo.jpg'),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 15.0, right: 15.0),
                child: Text(
                  'MEN',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryMain()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 15.0, right: 15.0),
                child: Text(
                  'WOMEN',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryMain()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 15.0, right: 15.0),
                child: Text(
                  'KIDS',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryMain()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 15.0, right: 15.0),
                child: Text(
                  'HOME & LIVING',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryMain()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 15.0, right: 15.0),
                child: Text(
                  'BEAUTY',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryMain()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 7.0, left: 15.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.grey[700],
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'My Orders',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrders()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.shoppingBag,
                      color: Colors.grey[700],
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'My Bag',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey[700],
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'My Wishlist',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WishlistPage()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.grey[700],
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'My Account',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAccount()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.notifications,
                      color: Colors.grey[700],
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'My Notification',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                child: Text(
                  'FAQ',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15.0,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FaqPage()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                child: Text(
                  'About App',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15.0,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutApp()),
                );
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15.0,
                  ),
                ),
              ),
              onTap: () {
                _showDialog();
              },
            ),
          ],
        ),
      ),
    );
  }
}
