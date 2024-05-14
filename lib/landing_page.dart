import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nesro_mart/cart_page.dart';
import 'package:nesro_mart/constants.dart';
import 'package:nesro_mart/home_page.dart';
import 'package:nesro_mart/profile_page.dart';
import 'package:nesro_mart/wishlist_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentTab = 0;

  final List<Widget> screens = [
    const HomePage(),
    const CartPage(),
    const WishListPage(),
    const ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  Color kActiveColor = kPrimaryColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageStorage(
          bucket: bucket,
          child: screens[currentTab],
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(),
            child: BottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: 0,
                selectedItemColor: kActiveColor,
                unselectedItemColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                currentIndex: currentTab,
                onTap: (int index) {
                  setState(() {
                    currentTab = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFF0E4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.home_outlined,
                          color: kPrimaryColor,
                        )),
                    icon: const Opacity(
                        opacity: 0.25, child: Icon(Icons.home_outlined)),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFF0E4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          CupertinoIcons.cart,
                          color: kPrimaryColor,
                        )),
                    icon: const Opacity(
                        opacity: 0.25, child: Icon(CupertinoIcons.cart)),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFF0E4),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.favorite_border,
                        color: kPrimaryColor,
                      ),
                    ),
                    icon: const Opacity(
                        opacity: 0.25,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        )),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFF0E4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          CupertinoIcons.person,
                          color: kPrimaryColor,
                        )),
                    icon: const Opacity(
                        opacity: 0.25, child: Icon(CupertinoIcons.person)),
                    label: "",
                  )
                ])));
  }
}
