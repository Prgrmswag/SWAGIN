import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>> fetchProducts() async {
  final apiUrl = 'https://fakestoreapi.com/products';
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    print('data ara hai ');
    return List<Map<String, dynamic>>.from(json.decode(response.body));
  } else {
    throw Exception("Failed to load images");
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Api {
//   static const products = 'https://fakestoreapi.com/products';

//   //async is used when the data might take time to load so its asynchronus so it will keep loading till the app is running

//    Future<void> getProducts() async {
   
//     final response = await http.get(Uri.parse(products));

//     if (response.statusCode == 200) {
//       final decodedData = jsonDecode(response.body);
//       final List<dynamic> result = decodedData;
//       // print('line 18::${result.toString()}');
      
//       debugPrint('line 18::${result[0]['title']}');
//     } else {
//       throw Exception('Api data 404');
//     }
//   }
// }