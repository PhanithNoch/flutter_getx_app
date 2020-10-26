import 'package:flutter/material.dart';
import 'package:fluttergetxapp/controller/card_controller.dart';
import 'package:fluttergetxapp/controller/shopping_controller.dart';
import 'package:fluttergetxapp/views/detail_page.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // recommended use like this
    final shoppingController = Get.put(ShoppingController());
    final cardController = Get.put(CardController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        title: Text(controller.products[index].productName),
                        subtitle: Text(controller.products[index].price.toString()),

                        trailing: Column(
                          children: [

                            FlatButton(onPressed: (){
                              cardController.addToCard(shoppingController.products[index]);
                            }, child: Text('Add to Cart',style: TextStyle(color: Colors.white),),color: Colors.blue,)
                          ],
                        ),
                      ),
                    );
                  }
                );
              }
            ),
          ),
          GetX<CardController>(
            builder: (controller) {
              return Text('Total Amount : ${controller.totalPrice}');
            }
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
      floatingActionButton: GetX<CardController>(
        builder: (controller) {
          return FloatingActionButton(
            onPressed: (){
              Get.to(DetailPage());
            },
            child: Text('${controller.count}'),
          );
        }
      ),
    );
  }
}
