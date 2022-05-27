import 'package:flutter/material.dart';
import 'package:flutter_with_sanctum/models/products.dart';
import 'package:flutter_with_sanctum/services/product_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<Product> _products;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _products = ProductService().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: FutureBuilder(
        future: _products,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              color: Colors.amber,
              // padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('hello')],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.hasError}');
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
