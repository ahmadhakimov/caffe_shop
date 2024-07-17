import 'package:caffe_shop/components/bottom_nav_bar.dart';
import 'package:caffe_shop/constractor.dart';
import 'package:caffe_shop/pages/cart_Page.dart';
import 'package:caffe_shop/pages/shop_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  void navigateButtomBar(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  final List<Widget> _pages=[
    ShopPage(),
    CartPage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigateButtomBar(index) ,
      ),
      body: _pages[_selectIndex],
    );
  }
}