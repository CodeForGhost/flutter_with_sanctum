import 'package:flutter/material.dart';
import 'package:flutter_with_sanctum/models/products.dart';
import 'package:flutter_with_sanctum/services/product_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<dynamic>> _products;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _products = ProductService().fetchProducts();
    getProducts();
  }

  Future<List<dynamic>> getProducts() async {
    _products = ProductService().fetchProducts();
    return await _products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: FutureBuilder<List<dynamic>>(
        future: _products,
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              color: Colors.amber,
              // padding: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                // scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(snapshot.data![index]['name'].toString()),
                        Text(snapshot.data![index]['description'].toString()),
                        Text(snapshot.data![index]['slug'].toString()),
                        Text(snapshot.data![index]['price'].toString()),
                        // Text(index.toString()),
                      ],
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

// Column(
//         children: [
          // Container(
          //   color: Colors.amber,
          //   // padding: EdgeInsets.all(10),
          //   height: 50,
          //   width: double.infinity,
          //   child: Card(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Text('hello'),
          //         Text('hello'),
          //         Text('hello'),
          //         Text('hello'),
          //       ],
          //     ),
          //   ),
          // ),
//           Container(
//             color: Colors.amber,
//             // padding: EdgeInsets.all(10),
//             height: 50,
//             width: double.infinity,
//             child: Card(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text('hello'),
//                   Text('hello'),
//                   Text('hello'),
//                   Text('hello'),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.amber,
//             // padding: EdgeInsets.all(10),
//             height: 50,
//             width: double.infinity,
//             child: Card(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text('hello'),
//                   Text('hello'),
//                   Text('hello'),
//                   Text('hello'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
