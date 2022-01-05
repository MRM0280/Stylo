import 'dart:io';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylo_fashion/pages/cart.dart';
import 'package:stylo_fashion/pages/home/drawer.dart';
import 'package:stylo_fashion/pages/home/home_component/category_slider.dart';
import 'package:stylo_fashion/pages/home/home_component/explore_brands.dart';
import 'package:stylo_fashion/pages/home/home_component/kids_apparels.dart';
import 'package:stylo_fashion/pages/home/home_component/main_slider.dart';
import 'package:stylo_fashion/pages/home/home_component/safety_checklist.dart';
import 'package:stylo_fashion/pages/home/home_component/summer_edit.dart';
import 'package:stylo_fashion/pages/home/home_component/top_category_grid.dart';
import 'package:stylo_fashion/pages/notification.dart';
import 'package:stylo_fashion/pages/search.dart';
import 'package:stylo_fashion/pages/wishlist.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  DateTime currentBackPressTime;

  bool loginShit = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('assets/logo/stylo_transparent.png'),
            height: 30.0,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              }),
          IconButton(
            icon: Badge(
              badgeContent: Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              badgeColor: Theme.of(context).primaryColorLight,
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications()),
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
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft, child: CartPage()));
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: WillPopScope(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            // Category Slider Start
            CategorySlider(),
            // Category Slider End

            // Main Slider Start
            MainSlider(),
            // Main Slider End

            // Safety Checklist Start
            SafetyChecklist(),
            // Safety Checklist End

            // Top Category Grid Start
            TopCategoryGrid(),
            // Top Category Grid End

            SizedBox(
              height: 8.0,
            ),

            // Summer Edit Start
            SummerEdit(),
            // Summer Edit End

            SizedBox(
              height: 8.0,
            ),

            // Explore Brands Start
            ExploreBrands(),
            // Explore Brands End

            // Kids Apparels Start
            KidsApparels(),
            // Kids Apparels End
          ],
        ),
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false;
    } else {
      return true;
    }
  }
}
