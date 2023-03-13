class ProductModel{
  int? id;
  String? name;
  int? qty;
  double? price;
  String? image;
  ProductModel({this.id, this.name, this.qty, this.price, this.image});
}
List<ProductModel>list = [
   ProductModel(id: 1, name: 'Doge SRT car', qty: 1, price: 100000, image:'assets/image/1.png', ),
   ProductModel(id: 2, name: 'Bugati car', qty: 1, price: 154000, image:'assets/image/2.png', ),
   ProductModel(id: 3, name: 'Doge SUV car', qty: 1, price: 1004500, image:'assets/image/3.png', ),
   ProductModel(id: 4, name: 'Bugati car', qty: 1, price: 104500, image:'assets/image/4.png', ),
   ProductModel(id: 5, name: 'tiwen Doge car', qty: 1, price: 1243000, image:'assets/image/5.png', ),
   ProductModel(id: 6, name: 'Cidean car', qty: 1, price: 124000, image:'assets/image/6.png', ),
   ProductModel(id: 7, name: 'Cidean car', qty: 1, price: 1243000, image:'assets/image/7.png', ),
   ProductModel(id: 8, name: 'Super Sport car', qty: 1, price: 12543000, image:'assets/image/8.png', ),
];








// List<String>imageCar = [
    
//     'assets/image/2.png',
//     'assets/image/3.png',
//     'assets/image/4.png',
//     'assets/image/5.png',
//     'assets/image/6.png',
//     'assets/image/7.png',
//     'assets/image/8.png',
// ];
// List<String> NameCar = [
//   'Doge Coustme',
//   'Dugati',
//   'Doge SUV',
//   'Dugati',
//   'Twen doge',
//   'Doge cidan',
//   'Doge Rad',
//   'Super Car',
// ];
// List <int> priceCar = [
//   100000,
//   120000,
//   140000,
//   230000,
//   450000,
//   234500,
//   1240322,
//   4590000,
// ];
// Container(
//               height:100,
//               width: 100,
//               color: Color.fromARGB(255, 196, 193, 193),
//               child: Stack(
//                children: [
//                 Container(
//                   height: 300,
//                   width: 300,
//                   child: const Image(image: NetworkImage('http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQPir0f1BHnKzF0oJ40_GjHM6Z0xD5ZfMcrB96lulVvf2dwYa8w3-Scmt3AZMVg5bXT'
//                   ),
//                 ),
//                 )
