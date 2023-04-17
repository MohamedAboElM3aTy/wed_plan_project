// import 'package:flutter/material.dart';

// class MainDrawer extends StatelessWidget {
//   Widget buildListTile(String title, IconData icon, Function onPressed) {
//     return ListTile(
//       leading: Icon(
//         icon,
//         size: 26,
//       ),
//       title: Text(
//         title,
//         style: TextStyle(
//           fontFamily: '',
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       onTap: () => {},
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: [
//           Container(
//             height: 150,
//             width: double.infinity,
//             padding: const EdgeInsets.all(20),
//             alignment: Alignment.centerLeft,
//             color: Colors.amber,
//             child: const Text(
//               'Let\'s Prepare you :)',
//               style: TextStyle(
//                 fontWeight: FontWeight.w900,
//                 fontSize: 30,
//                 color: Colors.red,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           buildListTile(
//             '...',
//             Icons.restaurant,
//             () => {}
//           ),
//           buildListTile(
//             '...',
//             Icons.settings,
//             () => {},
//           ),
//         ],
//       ),
//     );
//   }
// }