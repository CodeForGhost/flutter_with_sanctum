import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _products = [
    ['product1', 'pro1', '123', 'heloooo'],
    ['product1', 'pro1', '123', 'heloooo'],
    ['product1', 'pro1', '123', 'heloooo'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.amber,
            // padding: EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(_products[index][0]),
                  Text(_products[index][1]),
                  Text(_products[index][2]),
                  Text(_products[index][3]),
                ],
              ),
            ),
          );
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
