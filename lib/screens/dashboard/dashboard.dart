// import 'package:flutter/material.dart';
// import 'package:nawali/shared/services/translationService.dart';
// import 'package:nawali/shared/widgets/circles.dart';
// import 'package:nawali/shared/components/navCard.dart';
// import 'package:nawali/stylesheets/sheet.dart';

// import '../../routes/pagesRoute.dart';
// import '../../stylesheets/sheet.dart';
// import '../../stylesheets/sheet.dart';

// class Dashboard extends StatelessWidget {
//   final title;
//   static String routeName = "/home";

//   const Dashboard({Key key, @required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: Dimensions().getHeight(context, 4),
//             ),
//             Container(
//                 height: Dimensions().getHeight(context, 10),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: Dimensions().getWidth(context, 15),
//                       height: Dimensions().getHeight(context, 15),
//                       decoration: BoxDecoration(
//                         color: Colors.black45,
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/larporte.jpeg'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(
//                         left: Dimensions().getWidth(context, 1),
//                       ),
//                       alignment: Alignment.centerLeft,
//                       height: Dimensions().getHeight(context, 15),
//                       // decoration: BoxDecoration(
//                       //   color: Colors.orange,
//                       // ),
//                       child: TextThemeSheet().headers('Hi. Larporte'),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         goTo(AddMoneyPage(), context);
//                       },
//                       child: Container(
//                         margin: EdgeInsets.only(
//                           left: Dimensions().getWidth(context, 30),
//                         ),
//                         width: Dimensions().getWidth(context, 10),
//                         height: Dimensions().getHeight(context, 10),
//                         // add box shadow here!!!!!!
//                         decoration: BoxDecoration(
//                           color: ColorSet().primaryColor,
//                           shape: BoxShape.circle,
//                           // image: DecorationImage(
//                           //   image: AssetImage('assets/images/google.jpeg'),
//                           //   fit: BoxFit.contain,
//                           // ),
//                         ),
//                       ),
//                     )
//                   ],
//                 )),
//             SizedBox(
//               height: Dimensions().getHeight(context, 4),
//             ),
//             TextThemeSheet().largeSectionText('Account Balance'),
//             TextThemeSheet().balance('\$24,000.00'),
//             SizedBox(
//               height: Dimensions().getHeight(context, 2),
//             ),
//             Expanded(
//                 child: ListView(
//               children: [
//                 Container(
//                     child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextThemeSheet().smallThinText('10 May 2021'),
//                     SizedBox(
//                       height: Dimensions().getHeight(context, 2),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           ListTile(
//                             leading: Container(
//                                 padding: EdgeInsets.all(1),
//                                 width: Dimensions().getWidth(context, 10),
//                                 child: Circle(
//                                     radius: 5,
//                                     url: 'assets/images/google.jpeg')),
//                             title: TextThemeSheet()
//                                 .transcTitleText('Akinsiende Ifeoluwa'),
//                             subtitle: Container(
//                                 width: Dimensions().getWidth(context, 30),
//                                 child: TextThemeSheet()
//                                     .transcTimeText('00:34 AM')),
//                             trailing:
//                                 TextThemeSheet().transcCreditText('\$1,500.00'),
//                           ),
//                           Container(
//                             width: Dimensions().getWidth(context, 75),
//                             child: Divider(),
//                           ),
//                           ListTile(
//                             leading: Container(
//                                 padding: EdgeInsets.all(1),
//                                 width: Dimensions().getWidth(context, 10),
//                                 child: Circle(
//                                     radius: 5,
//                                     url: 'assets/images/google.jpeg')),
//                             title:
//                                 TextThemeSheet().transcTitleText('Shiek Lafey'),
//                             subtitle: Container(
//                                 width: Dimensions().getWidth(context, 30),
//                                 child: TextThemeSheet()
//                                     .transcTimeText('10:34 PM')),
//                             trailing:
//                                 TextThemeSheet().transcDebitText('\$500.00'),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 )),
//                 SizedBox(
//                   height: Dimensions().getHeight(context, 4),
//                 ),
//                 Container(
//                     child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextThemeSheet().smallThinText('12 August 2021'),
//                     SizedBox(
//                       height: Dimensions().getHeight(context, 2),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           ListTile(
//                             leading: Container(
//                                 padding: EdgeInsets.all(1),
//                                 width: Dimensions().getWidth(context, 10),
//                                 child: Circle(
//                                     radius: 5,
//                                     url: 'assets/images/google.jpeg')),
//                             title: TextThemeSheet()
//                                 .transcTitleText('Akin Akasuki'),
//                             subtitle: Container(
//                                 width: Dimensions().getWidth(context, 30),
//                                 child: TextThemeSheet()
//                                     .transcTimeText('01:34 AM')),
//                             trailing: TextThemeSheet()
//                                 .transcCreditText('\$15,500.00'),
//                           ),
//                           Container(
//                             width: Dimensions().getWidth(context, 75),
//                             child: Divider(),
//                           ),
//                           ListTile(
//                             leading: Container(
//                                 padding: EdgeInsets.all(1),
//                                 width: Dimensions().getWidth(context, 10),
//                                 child: Circle(
//                                     radius: 5,
//                                     url: 'assets/images/google.jpeg')),
//                             title: TextThemeSheet()
//                                 .transcTitleText('Akinsiende Ifeoluwa'),
//                             subtitle: Container(
//                                 width: Dimensions().getWidth(context, 30),
//                                 child: TextThemeSheet()
//                                     .transcTimeText('00:34 AM')),
//                             trailing:
//                                 TextThemeSheet().transcCreditText('\$1,500.00'),
//                           ),
//                           Container(
//                             width: Dimensions().getWidth(context, 75),
//                             child: Divider(),
//                           ),
//                           ListTile(
//                             leading: Container(
//                                 padding: EdgeInsets.all(1),
//                                 width: Dimensions().getWidth(context, 10),
//                                 child: Circle(
//                                     radius: 5,
//                                     url: 'assets/images/google.jpeg')),
//                             title: TextThemeSheet()
//                                 .transcTitleText('Akinsiende Ifeoluwa'),
//                             subtitle: Container(
//                                 width: Dimensions().getWidth(context, 30),
//                                 child: TextThemeSheet()
//                                     .transcTimeText('00:34 AM')),
//                             trailing:
//                                 TextThemeSheet().transcCreditText('\$1,500.00'),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 )),
//               ],
//             ))
//           ],
//         ));
//   }
// }
