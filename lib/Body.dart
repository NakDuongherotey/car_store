import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Drawer/Secordpage.dart';
import 'Drawer/listpage.dart';
import 'Icon.dart';
import 'controller/productmodel.dart';

class IconBody extends StatefulWidget {
   const IconBody({super.key});
 

  @override
  State<IconBody> createState() => _IconBodyState();
}

class _IconBodyState extends State<IconBody> {
  bool isdarkmode = false;
  GetStorage get ThemeData => GetStorage();
  ProductControler productControler = Get.put(ProductControler());
  @override
  Widget build(BuildContext context) {
    
    ThemeData.writeIfNull('DarkMode', false);
    bool darkmode = ThemeData.read('DarkMode');
    return GetBuilder<ProductControler>(
      init: productControler,
      builder: (contexts) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              Switch(value:darkmode, onChanged: (value) {
               setState(() {
                 value;
               });
               ThemeData.write('Darkmode', value);
              }),
              IconButton(onPressed: (() {
                Get.to(() => const ListCarScreen());
              }), icon: Badge(
                badgeContent: Obx((() => Text(productControler.products.length.toString(),))),
              ))
            ],
          ),
          body: Column(
            children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blueAccent, width: 4)
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.blueAccent,),
                  hintText: 'Search for car',
              ),
              ),
               ),
            Container(
              height: 80,
              color:  const Color.fromARGB(26, 126, 121, 121),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                   Icon(Icons.color_lens, ),
                   Text('car',style: TextStyle(fontSize: 30),),
                  Icon(Icons.menu,),
                  Icon(Icons.settings),
                ],
              ),
            ),
            Expanded(
              child: Container(
                 height:500,
              width: double.infinity,
              child: GridView.count(
                scrollDirection: 
                MediaQuery.of(context).orientation == Orientation.portrait
                ? Axis.vertical
                : Axis.horizontal,
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                children: List.generate(list.length, (index) => 
                InkWell(
                  onTap: () {
                    Get.to(()=>secordPage(pro: list[index],));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(list[index].image.toString()))
                      ),
                      child: Stack(
                        children: [
                          Container(
                             padding: const EdgeInsets.only(left: 140),
                             child: const Icon(Icons.favorite, size: 30, color: Color.fromARGB(255, 223, 49, 49),),
                          ),
                          Container(
                           padding: const EdgeInsets.only(top: 150),
                           child: Text(list[index].name.toString(),style: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 133, 34, 38),),),
                          ),
                        ]
                      ),
                    ),),
                )),
                ),
              ),
            ),
          ]),
        );
      }
    );
    
  }
}