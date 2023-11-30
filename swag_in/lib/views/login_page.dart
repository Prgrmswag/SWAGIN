import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swag_in/views/home.dart';
import 'package:swag_in/views/signup/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool passwordVisible = true;

  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                  height: 230, child: Image.asset('assets/images/logo.png')),
            ),
            const Text(
              'Fashion starts here !',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: TextFormField(
                style: const TextStyle(color: Color.fromARGB(183, 0, 0, 0)),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0))),
                               errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),
                          ),
                  hintText: 'Enter your email',
                  hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(195, 0, 0, 0)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter E-mail";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: TextFormField(
                style: const TextStyle(color: Color.fromARGB(183, 0, 0, 0)),
                controller: passwordController,
                obscureText: passwordVisible,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0))),
                               errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),
                          ),
                  hintText: "Enter password",
                  hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  suffixIcon: IconButton(
                    color: Colors.black,
                    icon: Icon(passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter password";
                  } else if (passwordController.text.length < 6) {
                    return " Password length should not be less than 6 characters";
                  }  else if (passwordController.text != value.toString()) {
                      return " Password does not match";
                  
                }return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });

                  try {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim())
                        .then((value) {
                      setState(() {
                        showSpinner = false;
                      });
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                    print('Login successfull');
                  } catch (e) {
                    print('error 101');
                  }
                },
                child: const SizedBox(
                  height: 40,
                  width: 70,
                  child: Center(
                      child: Text(
                    'Log-in',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  text: 'Dont have an account ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(204, 0, 0, 0),
                      fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                        text: 'Sign-up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'or Signup with',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 50,
                    child: Image.asset('assets/images/google.png'),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 45,
                    child: Image.asset('assets/images/Fb.png'),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
