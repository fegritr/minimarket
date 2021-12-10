import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:minimarket/app/modules/cart/views/cart_view.dart';
import 'package:minimarket/app/modules/category/views/category_view.dart';
import 'package:minimarket/app/modules/home/views/home_view.dart';
import 'package:minimarket/app/modules/profile/views/profile_view.dart';
import 'package:minimarket/app/modules/transaction/views/transaction_view.dart';

class RootView extends StatefulWidget {
  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  @override
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomeView(),
            CategoryView(),
            CartView(),
            TransactionView(),
            ProfileView()
          ],
        ));
  }
}
