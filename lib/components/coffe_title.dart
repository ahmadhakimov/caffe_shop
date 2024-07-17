import 'package:caffe_shop/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeTitle extends StatelessWidget {
  final Coffe coffe;
  void Function() ? onPressed;
  final Widget icon;
   CoffeTitle({super.key, required this.coffe,required this.onPressed , required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(coffe.imagePath),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}