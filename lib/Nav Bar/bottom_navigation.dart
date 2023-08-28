import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Profile account/profile_account.dart';
import '../Scanner/scan.dart';
import 'Cart/cart.dart';
import 'Lists/list.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const ListItems(),
      const CartScreen(),
      const QRScanner(),
      const ListItems(),
      const ProfileAccount(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      padding: const NavBarPadding.all(6.0),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 100),
        curve: Curves.bounceInOut,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(Icons.home_rounded),
        icon: const Icon(Icons.home_rounded),
        title: ('Home'),
        activeColorPrimary: Colors.green.shade800,
        inactiveColorPrimary: Colors.green.shade800,
        textStyle: TextStyle(
            fontStyle: GoogleFonts.poppins().fontStyle,
            fontWeight: FontWeight.w500,
            fontSize: 12),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(Icons.shopping_cart_outlined),
        icon: const Icon(Icons.shopping_cart_rounded),
        title: ('Cart'),
        activeColorPrimary: Colors.green.shade800,
        inactiveColorPrimary: Colors.green.shade800,
        textStyle: TextStyle(
            fontStyle: GoogleFonts.poppins().fontStyle,
            fontWeight: FontWeight.w500,
            fontSize: 12),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(Icons.qr_code_outlined),
        icon: const Icon(Icons.qr_code_scanner_rounded),
        title: ('Scanner'),
        activeColorPrimary: Colors.green.shade800,
        inactiveColorPrimary: Colors.green.shade800,
        textStyle: TextStyle(
            fontStyle: GoogleFonts.poppins().fontStyle,
            fontWeight: FontWeight.w500,
            fontSize: 14),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(CupertinoIcons.square_list),
        icon: const Icon(CupertinoIcons.square_list_fill),
        title: ('List'),
        activeColorPrimary: Colors.green.shade800,
        inactiveColorPrimary: Colors.green.shade800,
        textStyle: TextStyle(
            fontStyle: GoogleFonts.poppins().fontStyle,
            fontWeight: FontWeight.w500,
            fontSize: 14),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(CupertinoIcons.person),
        icon: const Icon(CupertinoIcons.person_fill),
        title: ('Profile'),
        activeColorPrimary: Colors.green.shade800,
        inactiveColorPrimary: Colors.green.shade800,
        textStyle: TextStyle(
            fontStyle: GoogleFonts.poppins().fontStyle,
            fontWeight: FontWeight.w500,
            fontSize: 14),
      ),
    ];
  }
}
//
