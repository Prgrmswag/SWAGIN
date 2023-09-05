import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:swag_in/counter.dart';
import 'package:swag_in/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final counter _counter = counter();

  void incrementCounter() {
    setState(() {
      _counter.increment();
    });
  }

  void decrementCounter() {
    setState(() {
      _counter.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      
      floatingActionButton: GestureDetector(
        onTap: () {
          debugPrint('Added to cart successfully ');
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color.fromARGB(255, 28, 28, 28),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset(
                        'assets/images/shopcart.png',
                        color: Colors.white,
                      )),
                  const SizedBox(width: 8),
                  RichText(
                    text: const TextSpan(
                        text: ' Add to Cart | \$100.99 ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        children: <TextSpan>[
                          TextSpan(
                            text: '  \$190.99 ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 0.4,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(235, 255, 254, 254),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 42.5,
          ),
          child: Column(
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: SizedBox(
                          width: 327,
                          height: 392,
                          child: Center(
                              child: Image.asset(
                            'assets/images/model.jpg',
                            fit: BoxFit.cover,
                          ))),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 9.5, left: 12),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0.0,
                                      blurRadius: 12,
                                      offset: Offset(0, 5))
                                ],
                              ),
                              padding: const EdgeInsets.all(8),
                              child: const SizedBox(
                                height: 22,
                                width: 30,
                                child: Center(
                                    child: Icon(Icons.arrow_back_ios_new)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 13,
                              right: 60,
                            ),
                            child: Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 0.0,
                                          blurRadius: 12,
                                          offset: Offset(0, 5))
                                    ]),
                                padding: const EdgeInsets.all(8),
                                child: SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset(
                                        'assets/images/heart.png'))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Naruto printed\nHoodie',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 50),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: decrementCounter,
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 232, 232, 232),
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          _counter.value.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: incrementCounter,
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 232, 232, 232),
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 26,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.all(2),
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    onRatingUpdate: (rating) {
                      debugPrint(rating.toString());
                    },
                    unratedColor: Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  RichText(
                    text: const TextSpan(
                        text: '5.0 ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 84, 84, 84),
                            fontStyle: FontStyle.italic),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' ( 7,932+ reviews )',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const ReadMoreText(
                'Its my dream to create my own clothing brand and this is just the beginning for it so lets grind and shit done Its simple and elegant shape makes it perfect for those of you who like you who want minimalist clothes ',
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: '',
                trimCollapsedText: ' Read More..',
                trimExpandedText: ' Read Less',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 54, 54, 54)),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(right: 32),
                child: Divider(
                  height: 2,
                  color: Color.fromARGB(202, 18, 18, 18),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 60, top: 17),
                        child: Text(
                          'Choose Size ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  'S',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.black),
                              child: const Center(
                                child: Text(
                                  'M',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  'L',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  'XL',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 17),
                    child: Column(
                      children: [
                        const Text(
                          'Choose Colour ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.black),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(186, 154, 109, 92),
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
