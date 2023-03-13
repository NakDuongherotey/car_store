import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/productmodel.dart';

ProductControler productControler = Get.put(ProductControler());

class ListCarScreen extends StatefulWidget {
    const ListCarScreen({super.key, Key});
   //ProductModel pro;

  @override
  State<ListCarScreen> createState() => _ListCarScreenState();
}

class _ListCarScreenState extends State<ListCarScreen> {
  @override
  Widget build(BuildContext context) {
     return GetBuilder<ProductControler>(
      init: productControler,
      builder: (contexts) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Car'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode,
          color: Colors.black,
          ),),
        ],
      ),
      body:GetBuilder<ProductControler>(
        init: productControler,
        builder: (controller) {
        return ListView.builder(
          itemCount: productControler.products.length,
          itemBuilder: ((context, index) => Card(
            child:  ListTile(
              leading: const CircleAvatar(
                
              ),
              subtitle: Text(controller.products[index].id.toString()),
              title: Text(controller.products[index].name.toString()),
              trailing: IconButton(onPressed: () {
                controller.delete(controller.products[index]);
              }, icon: const Icon(
                Icons.delete,
                color: Colors.red),),
            ),
          )));
      },)
    );
  }
     );
  }
}