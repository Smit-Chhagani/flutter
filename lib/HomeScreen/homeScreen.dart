import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mobile_design/ProductList2/product1.dart';
import 'package:mobile_design/ProductList1/productDetail.dart';
import 'package:mobile_design/ProductList1/productDetail2.dart';
import 'package:mobile_design/ProductList1/productDetail3.dart';
import 'package:mobile_design/ProductList1/productDetail4.dart';
import 'package:mobile_design/addProduct.dart';
import 'package:mobile_design/model.dart';

import '../model2.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreen createState() => _homeScreen();
}

class _homeScreen extends State<homeScreen> {
  int _currentPage = 0;
  List<Model> model = [];
  List<ListView2> listView2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                // Offer Container
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      PageView(
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: <Widget>[
                          //1st PageView Scroll Page
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/detail.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 80),
                                  Text(
                                    'AUTUMN  COLLECTION',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    '30% OFF',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 50,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'For Selected Shopping Styles',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //2nd Pageview Scroll Page
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/product1.webp'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 80),
                                  Text(
                                    'AUTUMN  COLLECTION',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    '30% OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'For Selected Shopping Styles',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //3rd PageView Scroll Page
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/product3.webp'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 80),
                                  Text(
                                    'AUTUMN  COLLECTION',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    '30% OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'For Selected Shopping Styles',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //4th PageView Scroll Page
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/home.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 80),
                                  Text(
                                    'AUTUMN  COLLECTION',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    '30% OFF',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 50,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'For Selected Shopping Styles',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      //Dots Indicating
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20, left: 20),
                          child: DotsIndicator(
                            dotsCount: 4,
                            currentPage: _currentPage,
                          ),
                        ),
                      ),
                      //Shop Now Button
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black,
                          ),
                          margin: EdgeInsets.only(bottom: 10, right: 10),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetail2()));
                            },
                            child: Text(
                              'Shop Now',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // Top Trends Row
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Top Trends',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),

                    //View All option
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ],
                ),

                //List View Of Top Trends
                Container(
                  height: 225,
                  child: FutureBuilder(
                      future: getData(),
                      builder: (context, snapshot) {
                        if (snapshot.data!=null && snapshot.hasData) {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: model.length,
                              itemBuilder: (context, index) {
                                final product = model[index];
                                return Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductDetailsScreen(
                                                            productId:
                                                                product.id)));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 30),
                                                width: 180,
                                                height: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        '${product.productImage}'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              //Name Of 1st Product In ListView
                                              Container(
                                                //margin: EdgeInsets.only(right: 10),
                                                child: Text(
                                                  '${product.productName}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              //Price Of 1st Product In ListView
                                              Container(
                                                //margin: EdgeInsets.only(right: 70),
                                                child: Text(
                                                  '${product.productPrice}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              //Image Of 1st Product And Click Event With Some Details

                              // //Image Of 2nd Product And Click Event With Some Details
                              // Container(
                              //   child: InkWell(
                              //     onTap: () {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (context) => ProductDetail2()));
                              //     },
                              //     child: Column(
                              //       children: [
                              //         Container(
                              //           margin: EdgeInsets.only(left: 30),
                              //           width: 180,
                              //           height: 180,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(20),
                              //             image: DecorationImage(
                              //               image: AssetImage('assets/product1.webp'),
                              //               fit: BoxFit.cover,
                              //             ),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 50),
                              //           child: Text(
                              //             'Men T-Shirt',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 70),
                              //           child: Text(
                              //             '\$45.00',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // //Image Of 3rd Product And Click Event With Some Details
                              // Container(
                              //   child: InkWell(
                              //     onTap: () {
                              //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail3()));
                              //     },
                              //     child: Column(
                              //       children: [
                              //         Container(
                              //           margin: EdgeInsets.only(left: 30),
                              //           width: 180,
                              //           height: 180,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(20),
                              //             image: DecorationImage(
                              //               image: AssetImage('assets/product3.webp'),
                              //               fit: BoxFit.cover,
                              //             ),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 50),
                              //           child: Text(
                              //             'Tulle Skirt',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 70),
                              //           child: Text(
                              //             '\$45.00',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // //Image Of 4th Product And Click Event With Some Details
                              // Container(
                              //   child: InkWell(
                              //     onTap: () {
                              //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail4()));
                              //     },
                              //     child: Column(
                              //       children: [
                              //         Container(
                              //           margin: EdgeInsets.only(left: 30),
                              //           width: 180,
                              //           height: 180,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(20),
                              //             image: DecorationImage(
                              //               image: AssetImage('assets/home.jpg'),
                              //               fit: BoxFit.cover,
                              //             ),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 50),
                              //           child: Text(
                              //             'Tulle Skirt',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 70),
                              //           child: Text(
                              //             '\$45.00',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),

                //Row with Most Popular and view all option
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Most Popular',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 225,
                  child: FutureBuilder(
                      future: getData(),
                      builder: (context, snapshot) {
                        if (snapshot.data!=null && snapshot.hasData) {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: model.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductDetail2()));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 30),
                                                width: 180,
                                                height: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        '${model[index].productImage}'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              //Name Of 1st Product In ListView
                                              Container(
                                                //margin: EdgeInsets.only(right: 10),
                                                child: Text(
                                                  '${model[index].productName}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              //Price Of 1st Product In ListView
                                              Container(
                                                //margin: EdgeInsets.only(right: 70),
                                                child: Text(
                                                  '${model[index].productPrice}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              //Image Of 1st Product And Click Event With Some Details

                              // //Image Of 2nd Product And Click Event With Some Details
                              // Container(
                              //   child: InkWell(
                              //     onTap: () {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (context) => ProductDetail2()));
                              //     },
                              //     child: Column(
                              //       children: [
                              //         Container(
                              //           margin: EdgeInsets.only(left: 30),
                              //           width: 180,
                              //           height: 180,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(20),
                              //             image: DecorationImage(
                              //               image: AssetImage('assets/product1.webp'),
                              //               fit: BoxFit.cover,
                              //             ),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 50),
                              //           child: Text(
                              //             'Men T-Shirt',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 70),
                              //           child: Text(
                              //             '\$45.00',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // //Image Of 3rd Product And Click Event With Some Details
                              // Container(
                              //   child: InkWell(
                              //     onTap: () {
                              //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail3()));
                              //     },
                              //     child: Column(
                              //       children: [
                              //         Container(
                              //           margin: EdgeInsets.only(left: 30),
                              //           width: 180,
                              //           height: 180,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(20),
                              //             image: DecorationImage(
                              //               image: AssetImage('assets/product3.webp'),
                              //               fit: BoxFit.cover,
                              //             ),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 50),
                              //           child: Text(
                              //             'Tulle Skirt',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 70),
                              //           child: Text(
                              //             '\$45.00',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // //Image Of 4th Product And Click Event With Some Details
                              // Container(
                              //   child: InkWell(
                              //     onTap: () {
                              //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail4()));
                              //     },
                              //     child: Column(
                              //       children: [
                              //         Container(
                              //           margin: EdgeInsets.only(left: 30),
                              //           width: 180,
                              //           height: 180,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(20),
                              //             image: DecorationImage(
                              //               image: AssetImage('assets/home.jpg'),
                              //               fit: BoxFit.cover,
                              //             ),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 50),
                              //           child: Text(
                              //             'Tulle Skirt',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //         Container(
                              //           margin: EdgeInsets.only(right: 70),
                              //           child: Text(
                              //             '\$45.00',
                              //             style: TextStyle(fontWeight: FontWeight.bold),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              );
                        }
                        else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
              ],
            ),
          ],
        ),
      ),

      //Bottom navigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add product'),
        ],
        onTap: (index) {
          if (index == 2) {
            // Check if the third item was tapped
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => AddProductPage()))
                .then(
              (value) {
                print('VALUE:::::$value');
                if (value == true)
                  setState(() {
                    model.clear();
                  });
              },
            );
          }
        },
      ),
    );
  }

  Future<List<Model>?> getData() async {
    final response = await http
        .get(Uri.parse('https://632158d682f8687273afebf3.mockapi.io/Products'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        model.add(Model.fromJson(index));
      }
      return model;
    } else {
      return null;
    }
  }
//
// Future<List<ListView2>> getData2() async {
//   final response = await http
//       .get(Uri.parse('https://632158d682f8687273afebf3.mockapi.io/Project'));
//   var data = jsonDecode(response.body.toString());
//   print('status code is :${response.statusCode}');
//   if (response.statusCode == 200) {
//     for (Map<String, dynamic> index in data) {
//       welcome.add(Welcome.fromJson(index));
//     }
//     return listView2;
//   } else {
//     return listView2;
//   }
// }
}

class DotsIndicator extends StatelessWidget {
  final int dotsCount;
  final int currentPage;

  DotsIndicator({
    required this.dotsCount,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(dotsCount, (index) {
        return Container(
          width: 20.0,
          height: 15.0,
          margin: EdgeInsets.symmetric(horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentPage
                ? Colors.white
                : Color.fromRGBO(0, 0, 0, 0.8),
          ),
        );
      }),
    );
  }
}

//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<dynamic> users = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('API'),
//       ),
//       body: Stack(
//         children: [
//           ListView.builder(
//             itemCount: users.length,
//             itemBuilder: (context, index) {
//               final user = users[index];
//               final ProductName = user['ProductName'];
//               final ProductPrice = user['ProductPrice'];
//               final imageUrl = user['ProductImage'];
//
//               return Column(
//                 children: [
//                   Container(
//                     child: ListTile(
//                       leading: ClipRRect(
//                         borderRadius: BorderRadius.circular(100),
//                         child: Container(
//                             height: 100,
//                             width: 100,
//                             child: Image.network(imageUrl)),
//                       ),
//                       title: Text(ProductName),
//                       subtitle: Text(ProductPrice),
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//           ElevatedButton(onPressed: (){
//             Navigator.pushNamed(context, '/addUser');
//           }, child: Text('add')),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: fetchUsers,
//         label: Text('Get Data'),
//       ),
//     );
//   }
//   Future<void> fetchUsers() async {
//     print('fetchUsers Called');
//     final url = 'https://632158d682f8687273afebf3.mockapi.io/Project';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);
//     setState(() {
//       users = json;
//     });
//     print('fetchUsers Completed');
//   }
//
// // Future<void> addUser() async {
// //   print('Add user called');
// //   // final route = MaterialPageRoute(
// //   //   builder: (context) => addUserPage(),
// //   // );
// //   // Navigator.push(context, route);
// // }
// }
