import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swag_in/views/counter.dart';
import 'package:swag_in/views/firebase_options.dart';
import 'package:swag_in/views/home.dart';
import 'package:swag_in/views/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: Home(),
      // routes: {
      //   '/': (_) => const LoginPage(),
      //   '/signup': (_) => const SignUpPage(),
      //   '/home': (_) => const Home(),
      //   '/hompage': (_) => const Homepage(),
      // },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Counter _counter = Counter();

  // @override
  // void initState() {
  //   super.initState();
  //   Api.getProducts();
  // }

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
        body: Container(
      child: const Text('hi'),
    ));
  }
}
