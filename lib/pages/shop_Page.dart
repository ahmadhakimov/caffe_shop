import 'package:caffe_shop/components/coffe_title.dart';
import 'package:caffe_shop/models/coffe.dart';
import 'package:caffe_shop/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffe coffe){
    Provider.of<CoffeShop>(context , listen: false).addItemIncart(coffe);
    showDialog(context: context, builder: (context)=>AlertDialog(title: Text("sucssecfylly"),));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      "How would you like your Coffe",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeshop.length,
                            itemBuilder: (context, index) {
                              Coffe eachcoffe = value.coffeshop[index];
                              return CoffeTitle(coffe: eachcoffe,
                              onPressed: ()=> addToCart(eachcoffe),
                              icon: Icon(Icons.add),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}
