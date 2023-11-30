// import 'package:custom_navigation_bar/custom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import 'package:swag_in/views/app_styles.dart';
// import 'package:swag_in/views/model.dart';
// import 'package:swag_in/views/profile.dart';
// import 'package:swag_in/views/size_config.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }



// class _HomeState extends State<Home> {
//   List<String> categories = [
//     "All items",
//     "Shirt",
//     "Hoodie",
//     "Jeans",
//   ];

//   List<String> svg = [
//     "All_item",
//     "shirt",
//     "hoodie",
//     "jeans",
//   ];

//   List<String> models = [
//     'ModelImage1',
//     'ModelImage2',
//     'ModelImage3',
//     'ModelImage4',
//     'ModelImage5',
//     'ModelImage6',
//     'ModelImage7',
//     'ModelImage8',
//   ];

//   final productList = [
//     {
//       "id": 1,
//       "title": "title",
//       "description": "subtitle",
//       "price": 549,
//       "discountPercentage": 12.96,
//       "rating": 4.69,
//       "stock": 94,
//       "brand": "SWAGIN",
//       "category": "male shirts",
//       "images": "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
//     },
//   ];

//   int current = 0;
//   int _currentIndex = 0;



// //Assign the values later
// late Future<List<Model>> products;

// //Init state runs as soon as the app builds
// // @override
// // void initState() {
// //   super.initState();
// //    products = Api().getProducts();
// // }


//   @override
//   Widget build(BuildContext context) {
//     sizeConfig().init(context);
//     return Scaffold(
//       // floatingActionButtonLocation:
//       //     FloatingActionButtonLocation.miniCenterDocked,
//       bottomNavigationBar: CustomNavigationBar(
//         isFloating: false,
//         borderRadius: const Radius.circular(3),
//         unSelectedColor: kGrey,
//         selectedColor: kWhite,
//         backgroundColor: kBrown,
//         strokeColor: Colors.transparent,
//         scaleFactor: 0.2,
//         iconSize: 35,
//         items: [
//           CustomNavigationBarItem(
//               icon: _currentIndex == 0
//                   ? SvgPicture.asset('assets/images/svg/home_se.svg')
//                   : SvgPicture.asset('assets/images/svg/home-1un.svg')),
//           CustomNavigationBarItem(
//             icon: _currentIndex == 1
//                 ? SvgPicture.asset('assets/images/svg/cart_selected.svg')
//                 : SvgPicture.asset('assets/images/svg/cart_unselected.svg'),
//           ),
//           CustomNavigationBarItem(
//               icon: _currentIndex == 2
//                   ? SvgPicture.asset('assets/images/svg/heart_selected.svg')
//                   : SvgPicture.asset('assets/images/svg/heart_unselected.svg')),
//           CustomNavigationBarItem(
//               icon: _currentIndex == 3
//                   ? SvgPicture.asset('assets/images/svg/profile_se.svg')
//                   : SvgPicture.asset('assets/images/svg/profile_un.svg')),
//         ],
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(
//             () {
//               _currentIndex = index;
//             },
//           );
//         },
//       ),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 10,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Hello, Welcome 👋',
//                           style: kEncodesansregular.copyWith(
//                             fontWeight: FontWeight.w500,
//                             color: kBrown,
//                             fontSize: sizeConfig.blockSizeHorizontal! * 3.6,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 4.5),
//                           child: Text(
//                             'SWARAJ PATIL',
//                             style: kEncodesansBold.copyWith(
//                               color: kBrown,
//                               fontSize: sizeConfig.blockSizeHorizontal! * 4,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const profilePage()));
//                       },
//                       child: const CircleAvatar(
//                         radius: 28,
//                         backgroundColor: kGrey,
//                         backgroundImage: AssetImage('assets/images/zeni.png'),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       style: kEncodesansregular.copyWith(
//                         color: kBlack,
//                         fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
//                       ),
//                       controller: TextEditingController(),
//                       decoration: InputDecoration(
//                           contentPadding: const EdgeInsets.symmetric(
//                             horizontal: 13,
//                           ),
//                           prefixIcon: const IconTheme(
//                             data: IconThemeData(
//                               color: kBlack,
//                             ),
//                             child: Icon(Icons.search),
//                           ),
//                           hintText: 'Search your Style  ',
//                           border: kInputBorder,
//                           errorBorder: kInputBorder,
//                           disabledBorder: kInputBorder,
//                           focusedBorder: kInputBorder,
//                           focusedErrorBorder: kInputBorder,
//                           enabledBorder: kInputBorder,
//                           hintStyle: kEncodesansregular.copyWith(
//                             color: kDarkGrey,
//                             fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
//                           )),
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   Container(
//                       padding: const EdgeInsets.all(12),
//                       height: 49,
//                       width: 49,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(kBorderRadius),
//                         color: kBlack,
//                       ),
//                       child: Image.asset('assets/images/f.png'))
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),
//             SizedBox(
//               height: 36,
//               width: double.infinity,
//               child: ListView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 itemCount: categories.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         current = index;
//                       });
//                     },
//                     child: Container(
//                       margin: EdgeInsets.only(
//                         left: index == 0 ? kPaddingHorizontal : 9,
//                         right: index == categories.length - 1
//                             ? kPaddingHorizontal
//                             : 0,
//                       ),
//                       padding: const EdgeInsets.symmetric(horizontal: 7),
//                       height: 36,
//                       decoration: BoxDecoration(
//                           color: current == index ? kBrown : kWhite,
//                           borderRadius: BorderRadius.circular(8),
//                           border: current == index ? null : Border.all()),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             height: 28,
//                             width: 28,
//                             child: SvgPicture.asset(current == index
//                                 ? 'assets/images/svg/${svg[index]}_selected.svg'
//                                 : 'assets/images/svg/${svg[index]}_unselected.svg'),
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             categories[index],
//                             style: kEncodesansMedium.copyWith(
//                               color: current == index ? kWhite : kDarkBrown,
//                               fontSize: sizeConfig.blockSizeHorizontal! * 3,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 32,
//             ),
//             MasonryGridView.count(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               crossAxisCount: 2,
//               crossAxisSpacing: 20,
//               mainAxisSpacing: 23,
//               itemCount: models.length,
//               padding:
//                   const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
//               itemBuilder: (context, index) {
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [

//                     // EXperiment yaha se start 

//                         FutureBuilder(future: products ,
//                         builder: (context, snapshot) {
//                           if(snapshot.hasError){
//                             return Center(child: Text(snapshot.hasError.toString()),
//                             );
//                           }else if (snapshot.hasData) {

// return const ClipRRect(


// );
//                           }else {
//                             return const Center(child: CircularProgressIndicator(),
//                             );
//                           }
//                         },
//                         ),
//                         Positioned(
                          
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(kBorderRadius),
//                             child:

//                         // Image.network(
//                         //   filterQuality: FilterQuality.high,
//                         //   fit: BoxFit.cover,
//                         //  '$products$'
//                         // )
//                              Image.asset(
//                               'assets/images/models/${models[index]}.png',
//                               fit: BoxFit.cover,
//                             ),



//                           ),
//                         ),
//                         Positioned(
//                             top: 9,
//                             right: 8,
//                             child: GestureDetector(
//                               onTap: () {},
//                               child: SvgPicture.asset(
//                                   'assets/images/svg/heart_unselected.svg'),
//                             ))
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Modern Light Clothes',
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: kEncodesansSemiBold.copyWith(
//                         color: kDarkBrown,
//                         fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       ' Dress modern ',
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: kEncodesansregular.copyWith(
//                         color: kGrey,
//                         fontSize: sizeConfig.blockSizeHorizontal! * 2.5,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           ' \$212.99',
//                           maxLines: 1,
//                           style: kEncodesansSemiBold.copyWith(
//                             color: kBlack,
//                             fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 35),
//                           child: Row(
//                             children: [
//                               const Icon(
//                                 Icons.star,
//                                 color: Colors.yellow,
//                                 size: 16,
//                               ),
//                               const SizedBox(width: 2),
//                               Text(
//                                 ' 5.0',
//                                 style: kEncodesansregular.copyWith(
//                                   color: kBlack,
//                                   fontSize: sizeConfig.blockSizeHorizontal! * 3,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
