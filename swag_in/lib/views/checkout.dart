import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 375,
      height: 812,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 462,
            child: Container(
              width: 375,
              height: 348,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 260,
                    child: Container(
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 18),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF292526),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Text(
                                'Pay',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Encode Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 0.10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 25,
                    top: 230,
                    child: SizedBox(
                      width: 325,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 205),
                          Text(
                            '\$131.97',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 214,
                    child: Container(
                      width: 327,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFEDEDED),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 180,
                    child: Container(
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Shipping Fee',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 205),
                          Text(
                            '\$.0.00',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 146,
                    child: Container(
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total (9 items)',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 192),
                          Text(
                            '\$131.97',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 60,
                    child: Container(
                      width: 327,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF6F6F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 45,
                                          height: 30,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 45,
                                                height: 30,
                                                decoration: ShapeDecoration(
                                                  image: const DecorationImage(
                                                    image: NetworkImage(
                                                        "https://via.placeholder.com/45x30"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        const Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '**** **** **** ',
                                                style: TextStyle(
                                                  color: Color(0xFF1B2028),
                                                  fontSize: 14,
                                                  fontFamily: 'Encode Sans',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0.10,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '2143',
                                                style: TextStyle(
                                                  color: Color(0xFF1B2028),
                                                  fontSize: 14,
                                                  fontFamily: 'Encode Sans',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.10,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 59),
                                  const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 20,
                                                      height: 20,
                                                      child:
                                                          Stack(children: []),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 24,
                    top: 24,
                    child: Text(
                      'Shipping Information',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Encode Sans',
                        fontWeight: FontWeight.w600,
                        height: 0.10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 368,
            child: SizedBox(
              width: 327,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 242,
                    top: 42,
                    child: Container(
                      width: 85,
                      height: 28,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B2028),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Stack(children: []),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            '4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                            ),
                          ),
                          SizedBox(width: 12),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Stack(children: []),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 311,
                    top: 8,
                    child: SizedBox(
                      width: 16,
                      height: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 85,
                    top: 0,
                    child: SizedBox(
                      width: 135,
                      height: 66,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Modern light clothes',
                                  style: TextStyle(
                                    color: Color(0xFF1B2028),
                                    fontSize: 14,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Dress modern',
                                  style: TextStyle(
                                    color: Color(0xFFA4AAAD),
                                    fontSize: 10,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            '\$212.99',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 70,
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 95,
                            height: 118,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 95,
                                  height: 118,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/95x118"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 70,
                                  height: 83,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 83,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/70x83"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 344,
            child: Container(
              width: 327,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFEDEDED),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 250,
            child: SizedBox(
              width: 327,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 70,
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 95,
                            height: 118,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 95,
                                  height: 118,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/95x118"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 70,
                                  height: 87,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 87,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/70x87"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 85,
                    top: 4,
                    child: SizedBox(
                      width: 135,
                      height: 66,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Modern light clothes',
                                  style: TextStyle(
                                    color: Color(0xFF1B2028),
                                    fontSize: 14,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Dress modern',
                                  style: TextStyle(
                                    color: Color(0xFFA4AAAD),
                                    fontSize: 10,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            '\$212.99',
                            style: TextStyle(
                              color: Color(0xFF1B2028),
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 311,
                    top: 9,
                    child: SizedBox(
                      width: 16,
                      height: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 245,
                    top: 42,
                    child: Container(
                      width: 82,
                      height: 28,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B2028),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Stack(children: []),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                            ),
                          ),
                          SizedBox(width: 12),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Stack(children: []),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 226,
            child: Container(
              width: 327,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFEDEDED),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 132,
            child: SizedBox(
              width: 327,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 220,
                      height: 70,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 118,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 95,
                                          height: 118,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://via.placeholder.com/95x118"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Modern light clothes',
                                        style: TextStyle(
                                          color: Color(0xFF1B2028),
                                          fontSize: 14,
                                          fontFamily: 'Encode Sans',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Dress modern',
                                        style: TextStyle(
                                          color: Color(0xFFA4AAAD),
                                          fontSize: 10,
                                          fontFamily: 'Encode Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 13),
                                const Text(
                                  '\$212.99',
                                  style: TextStyle(
                                    color: Color(0xFF1B2028),
                                    fontSize: 14,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 311,
                    top: 8,
                    child: SizedBox(
                      width: 16,
                      height: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1B2028),
                              shape: OvalBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 242,
                    top: 42,
                    child: Container(
                      width: 85,
                      height: 28,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B2028),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Stack(children: []),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            '4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                            ),
                          ),
                          SizedBox(width: 12),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Stack(children: []),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 44,
            child: Container(
              width: 327,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFEDEDED)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(1.57),
                          child: const SizedBox(
                            width: 24,
                            height: 24,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: Stack(children: []),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 51),
                  const Text(
                    'Checkout',
                    style: TextStyle(
                      color: Color(0xFF1B2028),
                      fontSize: 16,
                      fontFamily: 'Encode Sans',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                  const SizedBox(width: 51),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFEDEDED)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 12,
                                height: 8,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/12x8"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: 375,
              height: 44,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 375,
                    height: 44,
                    padding: const EdgeInsets.only(
                      top: 12,
                      left: 12,
                      right: 24.67,
                      bottom: 11,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 21,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                        ),
                        SizedBox(
                          width: 66.66,
                          height: 11.34,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 42.33,
                                top: 0,
                                child: SizedBox(
                                  width: 24.33,
                                  height: 11.33,
                                  child: Stack(children: []),
                                ),
                              ),
                              Positioned(
                                left: 22.03,
                                top: 0,
                                child: Container(
                                  width: 15.27,
                                  height: 10.97,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/15x11"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0.34,
                                child: Container(
                                  width: 17,
                                  height: 10.67,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/17x11"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 778,
            child: SizedBox(
              width: 375,
              height: 34,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 375,
                    height: 34,
                    padding: const EdgeInsets.only(
                      top: 21,
                      left: 121,
                      right: 120,
                      bottom: 8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 134,
                          height: 5,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF0F0F0F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
