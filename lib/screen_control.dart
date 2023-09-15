import 'package:coin_app/screens/alert_screen.dart';
import 'package:coin_app/screens/conversion_screen.dart';
import 'package:coin_app/screens/wallets_screen.dart';
import 'package:coin_app/screens/home_sreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ScreenControl extends StatefulWidget {
  const ScreenControl({super.key});

  @override
  State<ScreenControl> createState() => _ScreenControlState();
}

class _ScreenControlState extends State<ScreenControl> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WalletScreen(),
    AlertScreen(),
    ConversionScreen(),
  ];
  static final List<LinearGradient> _selectedColor = [
    LinearGradient(begin: Alignment.topLeft, colors: [
      Colors.black.withBlue(50),
      Colors.grey,
    ]),
    const LinearGradient(begin: Alignment.topLeft, colors: [
      Colors.deepPurple,
      Colors.grey,
    ]),
    LinearGradient(begin: Alignment.topLeft, colors: [
      Colors.black.withGreen(50),
      Colors.grey,
    ]),
    LinearGradient(begin: Alignment.topLeft, colors: [
      Colors.black.withRed(80),
      Colors.grey,
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: Container(
              color: Colors.black,
              child: SafeArea(
                child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    child: GNav(
                      backgroundColor: Colors.black,
                      color: Colors.white,
                      activeColor: Colors.white,
                      tabBackgroundGradient: _selectedColor[_selectedIndex],
                      gap: 8,
                      padding: const EdgeInsets.all(12),
                      duration: const Duration(milliseconds: 400),
                      tabs: const [
                        GButton(
                          icon: Icons.home,
                          text: 'Home',
                        ),
                        GButton(
                          icon: Icons.wallet,
                          text: 'Wallets',
                        ),
                        GButton(
                          icon: Icons.notifications,
                          text: 'Alerts',
                        ),
                        GButton(
                          icon: Icons.account_circle,
                          text: 'Account',
                        ),
                        // GButton(
                        //   icon: Icons.currency_exchange,
                        //   text: 'Conversion',
                        // ),
                      ],
                      selectedIndex: _selectedIndex,
                      onTabChange: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            )));
  }
}
