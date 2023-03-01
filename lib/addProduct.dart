import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();
  String productName = '';
  String productImage = '';
  String productPrice = '';
  String productDescription = '';
  String productCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    productName = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Image'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a Image';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    productImage = value!;
                  });
                },
              ),
              TextFormField(
                minLines: 3,
                maxLines: 8,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    productName = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Category'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a category';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    productName = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Price'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a price';
                  }
                  if (double.tryParse(value!) == null) {
                    return 'Please enter a valid price';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    productPrice = value!;
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('Add Product'),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                   await addProduct(
                        productName,
                        productImage,
                        double.parse(productPrice),
                        productDescription,
                        productCategory);
                    Navigator.of(context).pop(true);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<http.Response> addProduct(
    String productName,
    String productImage,
    double productPrice,
    String productDescription,
    String productCategory) async {
  http.Response response = await http.post(
    Uri.parse('https://632158d682f8687273afebf3.mockapi.io/Products'),
    body: {
      'ProductName': productName,
      'ProductImage': productImage,
      'ProductPrice': productPrice.toString(),
      'ProductDescription': productDescription,
      'ProductCategory': productCategory,
    },
  );
  print(response.body);
  return response;
}

//
// 256 GB ROM
// 14.73 cm (5.8 inch) Super Retina HD Display
// 12MP + 12MP | 7MP Front Camera
// A11 Bionic Chip with 64-bit Architecture, Neural Engine, Embedded M11 Motion Coprocessor Processor
