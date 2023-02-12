import 'package:flutter/material.dart';
import 'package:mobile_design/HomeScreen/homeScreen.dart';


class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _rating = 4;
  int _selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Background Image
            Container(
              height: 580,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/detail.jpg"),
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
                        margin: EdgeInsets.only(left: 30, top: 30),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context, MaterialPageRoute(builder: (context)=>homeScreen()));
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
                          "Modern\nCotton Dress",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "\n\$76.99",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.pinkAccent[100],
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
                            index < _rating ? Icons.star : Icons.star_border,
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
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                        borderRadius: BorderRadius.circular(24),
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
                                        borderRadius: BorderRadius.circular(24),
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
                                        borderRadius: BorderRadius.circular(24),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                color: Colors.white,
                                child: IconButton(
                                  iconSize: 40,
                                  icon: Icon(Icons.thumb_up),
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
                                color: Colors.white,
                                child: IconButton(
                                  iconSize: 40,
                                  icon: Icon(Icons.shopping_bag),
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
                        'Size Guide Modern and fresh,\nGina Pink Collection is designed\nbuy a young original designer from\nohio who pursuits unique romance.\nrjbgyueryiasgrfufbaeufrlufrayebfyurebfyuaebr\nrjbgyueryiasgrfufbaeufrlufrayebfyurebfyuaebr',
                        style: TextStyle(color: Colors.grey,fontSize: 20),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
