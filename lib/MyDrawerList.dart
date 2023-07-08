import 'package:flutter/material.dart';

class MyDrawerList extends StatefulWidget {
  const MyDrawerList({super.key});

  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  var currentPage = DrawerSections.editprofile;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, 'Edit Profile', Icons.person,
              currentPage == DrawerSections.editprofile ? true : false),
          menuItem(2, 'Saved Cards and Wallet', Icons.wallet,
              currentPage == DrawerSections.savedcardandwallet ? true : false),
          menuItem(3, 'Saved Adresses', Icons.location_on,
              currentPage == DrawerSections.savedadresses ? true : false),
          menuItem(4, 'Select Language', Icons.language,
              currentPage == DrawerSections.selectlanguage ? true : false),
          menuItem(5, 'Notification Setiings', Icons.notifications,
              currentPage == DrawerSections.notificationsetting ? true : false),
          menuItem(6, 'Sell on Shopify', Icons.sell,
              currentPage == DrawerSections.sellonshopify ? true : false),
          menuItem(7, 'Review', Icons.reviews,
              currentPage == DrawerSections.review ? true : false),
          menuItem(8, 'FeedBacks', Icons.dynamic_feed,
              currentPage == DrawerSections.feedback ? true : false),
          menuItem(9, 'About', Icons.contact_page_outlined,
              currentPage == DrawerSections.about ? true : false),
        ],
      ),
    );
  }


  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.editprofile;
            } else if (id == 2) {
              currentPage = DrawerSections.savedcardandwallet;
            } else if (id == 3) {
              currentPage = DrawerSections.savedadresses;
            } else if (id == 4) {
              currentPage = DrawerSections.selectlanguage;
            } else if (id == 5) {
              currentPage = DrawerSections.notificationsetting;
            } else if (id == 6) {
              currentPage = DrawerSections.sellonshopify;
            } else if (id == 7) {
              currentPage = DrawerSections.review;
            } else if (id == 8) {
              currentPage = DrawerSections.feedback;
            }
            else if (id == 9) {
              currentPage = DrawerSections.about;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(child: Text(
                title,
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  editprofile,
  savedcardandwallet,
  savedadresses,
  selectlanguage,
  notificationsetting,
  sellonshopify,
  review,
  feedback,
  about,
  home,
  account,wishlist,categories,cart,
}

