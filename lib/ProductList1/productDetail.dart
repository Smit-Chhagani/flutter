import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:mobile_design/HomeScreen/homeScreen.dart';

import '../model.dart';

//
//
// class ProductDetail extends StatefulWidget {
//   @override
//   State<ProductDetail> createState() => _ProductDetailState();
// }
//
// class _ProductDetailState extends State<ProductDetail> {
//   int _rating = 4;
//   int _selectedColor = 0;
//   List<Welcome> welcome = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: FutureBuilder<Product>(
//           future: _product,
//           builder: (context, snapshot) {
//             return Column(
//               children: [
//                 //Background Image
//                 Container(
//                   height: 580,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/watch.webp'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       //Back Arrow & Menu
//                       Row(
//                         //mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.only(left: 30, top: 30),
//                             child: IconButton(
//                               onPressed: () {
//                                 Navigator.pop(context, MaterialPageRoute(builder: (context)=>homeScreen()));
//                               },
//                               icon: Icon(Icons.arrow_back_ios),
//                               iconSize: 40,
//                               color: Colors.white70,
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(left: 230, top: 30),
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(Icons.menu),
//                                 iconSize: 40,
//                                 color: Colors.white70),
//                           ),
//                         ],
//                       ),
//                       //Text & Price
//                       SizedBox(height: 410),
//                       Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Text(
//                               "Modern\nCotton Dress",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30,
//                               ),
//                             ),
//                             Text(
//                               "\n\$76.99",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 28,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.pinkAccent[100],
//                   child: Column(
//                     children: [
//                       //Ratings
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: List.generate(5, (index) {
//                           return Container(
//                             width: 28,
//                             padding: EdgeInsets.only(left: 20),
//                             child: IconButton(
//                               icon: Icon(
//                                 index < _rating ? Icons.star : Icons.star_border,
//                                 color: Colors.amber,
//                               ),
//                               onPressed: () {
//                                 setState(
//                                       () {
//                                     _rating = index + 1;
//                                   },
//                                 );
//                               },
//                             ),
//                           );
//                         }),
//                       ),
//                       //Colors & Like Shop Icons
//                       Row(
//                         children: [
//                           Column(
//                             children: [
//                               Column(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.only(right: 15),
//                                     child: Text(
//                                       'Colors',
//                                       style: TextStyle(fontSize: 18),
//                                     ),
//                                   ),
//                                   SizedBox(height: 6),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             _selectedColor = 0;
//                                           });
//                                         },
//                                         child: Container(
//                                           margin: EdgeInsets.only(left: 34),
//                                           height: 24,
//                                           width: 24,
//                                           decoration: BoxDecoration(
//                                             color: Colors.red,
//                                             borderRadius: BorderRadius.circular(24),
//                                             border: Border.all(
//                                               color: _selectedColor == 0
//                                                   ? Colors.black
//                                                   : Colors.transparent,
//                                               width: 2,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(width: 16),
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             _selectedColor = 1;
//                                           });
//                                         },
//                                         child: Container(
//                                           height: 24,
//                                           width: 24,
//                                           decoration: BoxDecoration(
//                                             color: Colors.green,
//                                             borderRadius: BorderRadius.circular(24),
//                                             border: Border.all(
//                                               color: _selectedColor == 1
//                                                   ? Colors.black
//                                                   : Colors.transparent,
//                                               width: 2,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(width: 16),
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             _selectedColor = 2;
//                                           });
//                                         },
//                                         child: Container(
//                                           height: 24,
//                                           width: 24,
//                                           decoration: BoxDecoration(
//                                             color: Colors.blue,
//                                             borderRadius: BorderRadius.circular(24),
//                                             border: Border.all(
//                                               color: _selectedColor == 2
//                                                   ? Colors.black
//                                                   : Colors.transparent,
//                                               width: 2,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           //Like And Shop Icons
//                           Container(
//                             margin: EdgeInsets.only(left: 90),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 ClipRRect(
//                                   borderRadius: BorderRadius.circular(50),
//                                   child: Container(
//                                     color: Colors.white,
//                                     child: IconButton(
//                                       iconSize: 40,
//                                       icon: Icon(Icons.thumb_up),
//                                       onPressed: () {
//                                         // add your onPressed code here for like button
//                                       },
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 20),
//                                 ClipRRect(
//                                   borderRadius: BorderRadius.circular(50),
//                                   child: Container(
//                                     color: Colors.white,
//                                     child: IconButton(
//                                       iconSize: 40,
//                                       icon: Icon(Icons.shopping_bag),
//                                       onPressed: () {
//                                         // add your onPressed code here for shop button
//                                       },
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       //Details of Product
//                       SizedBox(height: 30),
//                       Container(
//                         padding: EdgeInsets.only(left: 30),
//                         child: Text(
//                           'Size Guide Modern and fresh,\nGina Pink Collection is designed\nbuy a young original designer from\nohio who pursuits unique romance.\nrjbgyueryiasgrfufbaeufrlufrayebfyurebfyuaebr\nrjbgyueryiasgrfufbaeufrlufrayebfyurebfyuaebr',
//                           style: TextStyle(color: Colors.grey,fontSize: 20),),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           }
//         ),
//       ),
//     );
//   }
//   Future<List<Welcome>> getData() async{
//     final response = await http.get(Uri.parse('https://632158d682f8687273afebf3.mockapi.io/Products'));
//     var data = jsonDecode(response.body.toString());
//     if(response.statusCode == 200){
//       for(Map<String, dynamic> index in data){
//         welcome.add(Welcome.fromJson(index));
//       }
//       return welcome;
//     }
//     else{
//       return welcome;
//     }
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Product {
  final String productName;
  final String productImage;
  final String productPrice;
  final String productDescription;
  final String productCategory;
  final String id;
  final String? data;

  Product({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
    required this.productCategory,
    required this.id,
    this.data,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productName: json["ProductName"],
      productImage: json["ProductImage"],
      productPrice: json["ProductPrice"],
      productDescription: json["ProductDescription"],
      productCategory: json["ProductCategory"],
      id: json["id"],
      data: json["data"],
    );
  }
}

class ProductDetailsScreen extends StatefulWidget {
  final String productId;

  ProductDetailsScreen({required this.productId});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late Future<Product> _product;
  int _rating = 4;
  int _selectedColor = 0;

  @override
  void initState() {
    super.initState();
    _product = _fetchProduct();
  }

  Future<Product> _fetchProduct() async {
    final response = await http.get(Uri.parse(
        'https://632158d682f8687273afebf3.mockapi.io/Products/${widget.productId}'));
    print('response is ${response}');
    final jsonData = json.decode(response.body) as Map<String, dynamic>;
    return Product.fromJson(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FutureBuilder<Product>(
          future: _product,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final product = snapshot.data!;
              return Column(
                children: [
                  //Background Image
                  Container(
                    height: 570,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('${product.productImage}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        //Back Arrow & Menu
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25, top: 20),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => homeScreen()));
                                },
                                icon: Icon(Icons.arrow_back_ios),
                                iconSize: 40,
                                color: Colors.white70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 230, top: 30),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.menu),
                                  iconSize: 40,
                                  color: Colors.white70),
                            ),
                          ],
                        ),
                        //Text & Price
                        SizedBox(height: 410),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "${product.productName}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "\n${product.productPrice}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        //Ratings
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(5, (index) {
                            return Container(
                              width: 28,
                              padding: EdgeInsets.only(left: 20),
                              child: IconButton(
                                icon: Icon(
                                  index < _rating
                                      ? Icons.star
                                      : Icons.star_border,
                                  color: Colors.amber,
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      _rating = index + 1;
                                    },
                                  );
                                },
                              ),
                            );
                          }),
                        ),
                        //Colors & Like Shop Icons
                        Row(
                          children: [
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Colors',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedColor = 0;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(left: 34),
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              border: Border.all(
                                                color: _selectedColor == 0
                                                    ? Colors.black
                                                    : Colors.transparent,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedColor = 1;
                                            });
                                          },
                                          child: Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              border: Border.all(
                                                color: _selectedColor == 1
                                                    ? Colors.black
                                                    : Colors.transparent,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedColor = 2;
                                            });
                                          },
                                          child: Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              border: Border.all(
                                                color: _selectedColor == 2
                                                    ? Colors.black
                                                    : Colors.transparent,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //Like And Shop Icons
                            Container(
                              margin: EdgeInsets.only(left: 90),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      color: Colors.black,
                                      child: IconButton(
                                        iconSize: 35,
                                        icon: Icon(
                                          Icons.thumb_up,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          // add your onPressed code here for like button
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      color: Colors.black,
                                      child: IconButton(
                                        iconSize: 35,
                                        icon: Icon(
                                          Icons.shopping_bag,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          // add your onPressed code here for shop button
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        //Details of Product
                        SizedBox(height: 30),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            '${product.productDescription}',
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
