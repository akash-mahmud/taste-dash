import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:taste_dash/screen/home_screen.dart';
import 'package:taste_dash/screen/order_screen.dart';
import 'package:taste_dash/screen/profileScreen.dart';
import 'package:taste_dash/screen/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomeScreen homeScreen;
  late WalletScreen walletScreen;
  late ProfileScreen profileScreen;
  late OrderScreen orderScreen;
  @override
  void initState() {
    homeScreen = const HomeScreen();
    walletScreen = const WalletScreen();
    profileScreen = const ProfileScreen();
    orderScreen = const OrderScreen();
    pages = [
      homeScreen,
      orderScreen,
      walletScreen,
      profileScreen,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.black,
        animationDuration: const Duration(microseconds: 500),
        items: const [
        Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.wallet_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.person_outline,
          color: Colors.white,
        ),
      ]),
    );
  }
}
