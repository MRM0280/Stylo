import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylo_fashion/pages/faq_and_about_app/about_app.dart';
import 'package:stylo_fashion/pages/faq_and_about_app/faq.dart';
import 'package:stylo_fashion/pages/login_signup/login.dart';
import 'package:stylo_fashion/pages/my_account/account_setting.dart';
import 'package:stylo_fashion/pages/my_orders.dart';
import 'package:stylo_fashion/pages/notification.dart';

// My Own Imports


class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'MY ACCOUNT',
          style: TextStyle(
            fontFamily: 'Jost',
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            letterSpacing: 1.7,
            color: Colors.black,
          ),
        ),
        titleSpacing: 0.0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            width: width,
            height: 360.0,
            child: Stack(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/user_profile/background.jpg'),
                  width: width,
                  height: 220.0,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 165.0,
                  right: ((width / 2) - 50.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 110.0,
                        width: 110.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55.0),
                          border: Border.all(color: Colors.white, width: 5.0),
                        ),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(50.0),
                          child: Image(
                            image: AssetImage('assets/user_profile/user_3.jpg'),
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Allison Perry',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: InkWell(
                          child: Text(
                            'Edit Profile',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: Notifications()));
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.bell,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, left: 70.0),
            child: Divider(
              height: 1.0,
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: MyOrders()));
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.truck,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'My Orders',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, left: 70.0),
            child: Divider(
              height: 1.0,
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: AccountSetting()));
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.cogs,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Account Setting',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, left: 70.0),
            child: Divider(
              height: 1.0,
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: FaqPage()));
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.questionCircle,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'FAQ',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, left: 70.0),
            child: Divider(
              height: 1.0,
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: AboutApp()));
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.info,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'About App',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, left: 70.0),
            child: Divider(
              height: 1.0,
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.signOutAlt,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, left: 70.0),
            child: Divider(
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
