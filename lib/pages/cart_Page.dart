import 'package:caffe_shop/components/coffe_title.dart';
import 'package:caffe_shop/models/coffe.dart';
import 'package:caffe_shop/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffe coffe) {
    Provider.of<CoffeShop>(context, listen: false).removeFormatItem(coffe);
  }

  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text("Your card"),
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.usercart.length,
                        itemBuilder: (context, index) {
                          Coffe eachcoffe = value.usercart[index];
                          return CoffeTitle(
                              coffe: eachcoffe,
                              onPressed: () => removeFromCart(eachcoffe),
                              icon: Icon(Icons.delete));
                        },
                      ),
                    ),
                    GestureDetector(onTap: payNow,
                      child: Container(width: double.infinity,padding: EdgeInsets.all(25),
                        child: Center(child: Text("Pay now",style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                            borderRadius: BorderRadius.circular(12)),
                            
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
