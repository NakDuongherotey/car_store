import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Icon.dart';
import '../controller/productmodel.dart';

class secordPage extends StatefulWidget {
   secordPage({super.key,required this.pro});
  ProductModel pro;

  @override
  State<secordPage> createState() => _secordPageState();
}

class _secordPageState extends State<secordPage> {
  ProductControler productControler=Get.put(ProductControler());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductControler>(
      init: productControler,
      builder: (contexts) {
        return Scaffold(
          appBar: AppBar(
            title:  Text(widget.pro.name.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold),),
            centerTitle: true,
            leading: IconButton(
                icon:const Icon(Icons.arrow_back),
                onPressed: () =>Navigator.of(context).pop(),),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  child: Stack(children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: 
                    Image.
                    asset(
                      widget.pro.image.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 260,
                      child: Container(
                        width: 180,
                        height: 40,
                        alignment: Alignment.center,
                        child:Text(widget.pro.price.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0)),
                      )),
                ]
                  ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //padding: EdgeInsets.only(top: 6),
                  width: 370,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      heroTag: 'ggg',
                      tooltip: 'ggg',
                      onPressed: () {},
                      child: const Icon(
                        Icons.remove,
                        size: 30,
                      ),
                    ),
                    FloatingActionButton(
                      heroTag: 'hhh',tooltip:'hhh',
                        onPressed: () {},
                        child: const Icon(
                          Icons.exposure_zero,
                          size: 30,
                        )),
                    FloatingActionButton(
                      tooltip: 'hmhh',
                        heroTag: 'hmhh',
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          size: 30,
                        )),
                  ],
                ),
              )
            ],
          ), 
         ),
         floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20), minimumSize: Size(200, 45)),
          onPressed: () {

          },
          child: const Text('Buy Now'), 
          ),
        bottomNavigationBar: Container(
           height: 50,
          width: double.infinity,
          color: Color(0xffcee2e5),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 90,
                child: const Icon(
                  Icons.favorite,
                  size: 30,
                ),
              ),
              Expanded(
                  child: Container(
                height: 60,
                //color: Color(0xff4b919e),
                child: ElevatedButton(onPressed: (){productControler.insert(widget.pro);}, child: Row(children: [Text('Add to cardx')],))
                ),
              ),
            ],
          ),
        ), 
   );
      }
    );
  }
}