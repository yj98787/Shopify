import 'package:flutter/material.dart';
import 'consts.dart';
import 'MyHeaderDrawer.dart';
import 'MyDrawerList.dart';
import 'adr.dart';
import 'edit.dart';
import 'card.dart';
import 'lang.dart';
import 'notify.dart';
import 'review.dart';
import 'Sell.dart';
import 'about.dart';
import 'fed.dart';
import 'homy.dart';
import 'wishy.dart';
import 'accy.dart';
import 'caty.dart';
import 'carty.dart';
import 'search_screen.dart';
import 'package:badges/badges.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  var currentPage = DrawerSections.home;
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      container = Home();
    } else if (currentPage == DrawerSections.savedcardandwallet) {
      container = Cardin();
    } else if (currentPage == DrawerSections.savedadresses) {
      container = Adressin();
    } else if (currentPage == DrawerSections.selectlanguage) {
      container = Language();
    } else if (currentPage == DrawerSections.notificationsetting) {
      container = Notificationon();
    } else if (currentPage == DrawerSections.review) {
      container = Review();
    } else if (currentPage == DrawerSections.sellonshopify) {
      container = Sell();
    } else if (currentPage == DrawerSections.about) {
      container = About();
    } else if (currentPage == DrawerSections.feedback) {
      container = Fed();
    } else if (currentPage == DrawerSections.editprofile) {
      container = Edit();
    } else if (currentPage == DrawerSections.wishlist) {
      container = Wishlist();
    } else if (currentPage == DrawerSections.account) {
      container = Account();
    } else if (currentPage == DrawerSections.categories) {
      container = Categories();
    } else if (currentPage == DrawerSections.cart) {
      container = Card();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF02AAB0),
        title: Text(
          'Shopify',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchItems()));
              },
              child: Icon(
                Icons.search,
                color: kWhiteColor,
              )),
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.shopping_cart_outlined,
                color: kWhiteColor,
              ))
        ],
      ),
      body: container,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        backgroundColor: kWhiteColor,
        onTap: (index) {
          setState(() {
            myIndex = index;
            if (index == 0) {
              currentPage = DrawerSections.home;
            } else if (index == 1) {
              currentPage = DrawerSections.wishlist;
            } else if (index == 2) {
              currentPage = DrawerSections.account;
            } else if (index == 3) {
              currentPage = DrawerSections.categories;
            } else if (index == 4) {
              currentPage = DrawerSections.cart;
            }
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'WishList'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
