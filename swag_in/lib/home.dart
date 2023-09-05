import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swag_in/app_styles.dart';
import 'package:swag_in/size_config.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> categories = [
    "All items",
    "Shirt",
    "Hoodie",
    "Jeans",
  ];

  List<String> svg = [
    "All_item",
    "shirt",
    "hoodie",
    "jeans",
  ];

  List<String> models = [
    'ModelImage1',
    'ModelImage2',
    'ModelImage3',
    'ModelImage4',
    'ModelImage5',
    'ModelImage6',
    'ModelImage7',
    'ModelImage8',
  ];

  int current = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    sizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 64,
        child: CustomNavigationBar(
          isFloating: true,
          borderRadius: const Radius.circular(40),
          unSelectedColor: kGrey,
          selectedColor: kWhite,
          backgroundColor: kBrown,
          strokeColor: Colors.transparent,
          scaleFactor: 0.1,
          iconSize: 40,
          items: [
            CustomNavigationBarItem(
              icon: _currentIndex == 0
                  ? SvgPicture.asset('assets/images/svg/home_selected.svg')
                  : SvgPicture.asset('assets/images/svg/home_unselected.svg'),
            ),
            CustomNavigationBarItem(
              icon: _currentIndex == 1
                  ? SvgPicture.asset('assets/images/svg/cart_selected.svg')
                  : SvgPicture.asset('assets/images/svg/cart_unselected.svg'),
            ),
            CustomNavigationBarItem(
                icon: _currentIndex == 2
                    ? SvgPicture.asset('assets/images/svg/heart_selected.svg')
                    : SvgPicture.asset(
                        'assets/images/svg/heart_unselected.svg')),
            CustomNavigationBarItem(
                icon: _currentIndex == 3
                    ? SvgPicture.asset('assets/images/svg/account_selected.svg')
                    : SvgPicture.asset(
                        'assets/images/svg/account_unselected.svg')),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            },
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello, Welcome 👋',
                          style: kEncodesansregular.copyWith(
                            color: kBrown,
                            fontSize: sizeConfig.blockSizeHorizontal! * 3.6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.5),
                          child: Text(
                            'SWARAJ PATIL',
                            style: kEncodesansBold.copyWith(
                              color: kBrown,
                              fontSize: sizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: kGrey,
                      backgroundImage: AssetImage('assets/images/zeni.png'),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: kEncodesansregular.copyWith(
                        color: kDarkGrey,
                        fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 13,
                          ),
                          prefixIcon: const IconTheme(
                            data: IconThemeData(
                              color: kDarkGrey,
                            ),
                            child: Icon(Icons.search),
                          ),
                          hintText: 'Search your Style  ',
                          border: kInputBorder,
                          errorBorder: kInputBorder,
                          disabledBorder: kInputBorder,
                          focusedBorder: kInputBorder,
                          focusedErrorBorder: kInputBorder,
                          enabledBorder: kInputBorder,
                          hintStyle: kEncodesansregular.copyWith(
                            color: kDarkGrey,
                            fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
                          )),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                      padding: const EdgeInsets.all(12),
                      height: 49,
                      width: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kBlack,
                      ),
                      child: Image.asset('assets/images/f.png'))
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? kPaddingHorizontal : 9,
                        right: index == categories.length - 1
                            ? kPaddingHorizontal
                            : 0,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      height: 36,
                      decoration: BoxDecoration(
                          color: current == index ? kBrown : kWhite,
                          borderRadius: BorderRadius.circular(8),
                          border: current == index ? null : Border.all()),
                      child: Row(
                        children: [

                          SizedBox(
                            height: 28,
                            width: 28,
                            child: SvgPicture.asset(current == index
                                ? 'assets/images/svg/${svg[index]}_selected.svg'
                                : 'assets/images/svg/${svg[index]}_unselected.svg'),
                          ),
                          const SizedBox(width: 5),

                          Text(
                            categories[index],
                            style: kEncodesansMedium.copyWith(
                              color: current == index ? kWhite : kDarkBrown,
                              fontSize: sizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            MasonryGridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 23,
              itemCount: models.length,
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            child: Image.asset(
                             
                              'assets/images/models/${models[index]}.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 9,
                            right: 8,
                            child: GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  'assets/images/svg/heart_unselected.svg'),
                            ))
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Modern Light Clothes',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: kEncodesansSemiBold.copyWith(
                        color: kDarkBrown,
                        fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      ' Dress modern ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: kEncodesansregular.copyWith(
                        color: kGrey,
                        fontSize: sizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ' \$212.99',
                          maxLines: 1,
                          style: kEncodesansSemiBold.copyWith(
                            color: kBlack,
                            fontSize: sizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                ' 5.0',
                                style: kEncodesansregular.copyWith(
                                  color: kBlack,
                                  fontSize: sizeConfig.blockSizeHorizontal! * 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
