
import 'package:flutter/material.dart';
import 'package:swag_in/views/api.dart';
import 'package:swag_in/views/app_styles.dart';
import 'package:swag_in/views/counter.dart';


class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  late List<Map<String, dynamic>> products = [];

  final Counter counter = Counter();

  void incrementCounter() {
    setState(() {
      counter.increment();
    });
  }

  void decrementCounter() {
    setState(() {
      counter.decrement();
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProducts().then((data) {
      setState(() {
        products = data;
      });
    });
  }

  double getCartTotal() {
    double total = 0.0;
    for (int i = 0; i < products.length; i++) {
      total += counter.value * products[i]['price'];
    }
    return total;
  }

  void checkOut() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            
            content: const Text('Hurray ! order placed successfully '),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('My cart')),),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: ((context, index) {
                    return Dismissible(
                      key: Key(products[index]['id'].toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        setState(() {
                          products.removeAt(index);
                        });
                      },
                      background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Remove ')
                            ],
                          )),
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(57, 158, 158, 158),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 130,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  products[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    products[index]['title'.trim()],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Center(
                                    child: Text(
                                      products[index]['category'.trim()],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Color.fromARGB(158, 0, 0, 0),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: kBlueBlack,
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: decrementCounter,
                                    child: Container(
                                      child: const Center(
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    counter.value.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(width: 12),
                                  GestureDetector(
                                    onTap: incrementCounter,
                                    child: Container(
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
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
                    );
                  }),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Cart total  :',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                          ),
                          const SizedBox(width: 150),
                          Text(
                            '\$ ${getCartTotal().toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Shipping   :',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                          ),
                          SizedBox(width: 170),
                          Text('FREE ',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Bag Total  :',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                          ),
                          const SizedBox(width: 60),
                          Text(
                            '( ${counter.value} items)',
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Text(
                            '\$ ${getCartTotal().toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(children: [
                  Expanded(
                      child: SizedBox(
                    height: 50,
                    width: 20,
                    child: ElevatedButton(
                        onPressed: () {
                          checkOut();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Pay',
                          style: TextStyle(color: kWhite),
                        )),
                  ))
                ]),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
