//
// import 'package:dotted_line/dotted_line.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:inno_shopp/src/screen/women/dress/dress_items.dart';
//
// class ServiceDrawer extends StatefulWidget {
//   const ServiceDrawer({Key? key}) : super(key: key);
//
//   @override
//   State<ServiceDrawer> createState() => _ServiceDrawerState();
// }
//
// class _ServiceDrawerState extends State<ServiceDrawer> {
//   var _expanded = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         decoration: BoxDecoration(
//        color: Colors.pinkAccent
//         ),
//         child: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 22),
//               child: ListTile(
//                 trailing: IconButton(
//                   onPressed: () => Scaffold.of(context).closeDrawer(),
//                   icon: Icon(
//                     Icons.close,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//
//
//
//             ListTile(
//               title: Text(
//                 "Summer '23",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               onTap: () {
//
//               },
//             ),
//             DottedLine(
//               dashColor: Colors.white,
//               dashGapLength: 2,
//               dashLength: 1,
//             ),
//
//             ExpansionTile(
//               title: Text(
//               'Women',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//               collapsedIconColor: Colors.white,
//               childrenPadding: EdgeInsets.only(left: 20),
//               children: [
//                 ListTile(
//                   title: Text(
//                     'Dress',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//                       Get.to(WemanDressPage());
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Makeup',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Hills & Shoes',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Skin Care',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Hair Care',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//
//               ],
//
//
//             ),
//
//             DottedLine(
//               dashColor: Colors.white,
//               dashGapLength: 2,
//               dashLength: 1,
//             ),
//             ExpansionTile(
//               title: Text(
//               'Men',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//               collapsedIconColor: Colors.white,
//               childrenPadding: EdgeInsets.only(left: 20),
//               children: [
//                 ListTile(
//                   title: Text(
//                     'Shirt',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Pant',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Shoes',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//
//               ],
//
//
//             ),
//             DottedLine(
//               dashColor: Colors.white,
//               dashGapLength: 2,
//               dashLength: 1,
//             ),
//             ExpansionTile(
//               title: Text(
//                 'Kids',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               collapsedIconColor: Colors.white,
//               childrenPadding: EdgeInsets.only(left: 20),
//               children: [
//                 ListTile(
//                   title: Text(
//                     'Dress',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Shoes',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Others',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   onTap: () {
//
//                   },
//                 ),
//
//               ],
//
//
//             ),
//             DottedLine(
//               dashColor: Colors.white,
//               dashGapLength: 2,
//               dashLength: 1,
//             ),
//             ListTile(
//               title: Text(
//                 'About Us',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               onTap: () {
//
//               },
//             ),
//             DottedLine(
//               dashColor: Colors.white,
//               dashGapLength: 2,
//               dashLength: 1,
//             ),
//             ListTile(
//               title: Text(
//                 'Contact Us',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               onTap: () {
//
//               },
//             ),
//             DottedLine(
//               dashColor: Colors.white,
//               dashGapLength: 2,
//               dashLength: 1,
//             ),
//             ListTile(
//               title: Text(
//                 'Share App',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               onTap: () {
//
//               },
//             ),
//             DottedLine(
//               dashColor: Colors.white,
//               dashGapLength: 2,
//               dashLength: 1,
//             ),
//             ListTile(
//               title: Text(
//                 'Log Out',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               onTap: () {
//
//               },
//             ),
//
//             SizedBox(height: 60),
//           ],
//         ),
//       ),
//     );
//   }
// }