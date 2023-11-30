import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swag_in/controllers/signup_controller.dart';
import 'package:swag_in/views/home.dart';

import 'package:swag_in/views/signup/layout/signup_header.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends SignUpController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Form(
        key: formField,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
            child: Column(
            
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),

                const SizedBox(
                  height: 20,
                ),
                /* Header  */
                const SignUpHeader(),

                const SizedBox(
                  height: 20,
                ),

                /* Signup Form  */
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      // FIRST NAME
                      child: TextFormField(
                        style: const TextStyle(
                            color: Color.fromARGB(183, 0, 0, 0)),
                        controller: firstNameController,
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          hintText: 'First name',
                        
                          errorMaxLines: 2,
                          hintStyle: const TextStyle(
                             color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "  First name cannot be empty ";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        // LAST NAME

                        style: const TextStyle(
                            color: Color.fromARGB(183, 0, 0, 0)),
                        controller: lastNameController,
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          hintText: 'Last name',
                          hintStyle: const TextStyle(
                             color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Field cannot be empty ";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

//           EMAIL

                TextFormField(
                  style: const TextStyle(color: Color.fromARGB(183, 0, 0, 0)),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    hintText: 'Enter your E-mail',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
    
validator: (value) {
  if (value!.isEmpty) {
    return "Enter an E-mail";
  } else if (!RegExp(
          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
      .hasMatch(value)) {
    return "Enter valid E-mail";
  }

  return null;
},



                ),
                const SizedBox(
                  height: 20,
                ),

//           PASSWORD

                TextFormField(
                  style: const TextStyle(color: Color.fromARGB(183, 0, 0, 0)),
                  controller: passwordController,
                  obscureText: passwordVisible,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                       color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter password";
                    } else if (passwordController.text.length < 6) {
                      return " Password length should not be less than 6 characters";
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 20,
                ),

//          PHONE NUMBER

            TextFormField(
  controller: phoneNoController,
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    prefixIcon: const Icon(
      Icons.phone,
      color: Color.fromARGB(205, 0, 0, 0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    hintText: 'Enter phone number',
    hintStyle: TextStyle(fontSize: 18, color: Colors.black),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  style: TextStyle(color: Colors.black), // Set the text color here
  validator: (value) {
    if (value!.isEmpty) {
      return "Enter Phone number";
    }

    bool phoneValid = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value);

    if (!phoneValid) {
      return "Enter valid Phone number";
    }
    return null;
  },
),


                const SizedBox(height: 15),

//           CONFIRM PASSWORD

                TextFormField(
                  style: const TextStyle(color: Color.fromARGB(183, 0, 0, 0)),
                  controller: confirmPasswordController,
                  obscureText: passwordVisible,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    hintText: "Confirm password",
                    hintStyle: const TextStyle(
                       color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter password";
                    } else if (confirmPasswordController.text.length < 8) {
                      return " Password length should not be less than 8 characters";
                    } else if (passwordController.text != value.toString()) {
                      return " Password does not match";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                
                
                Row(
                  children: [
                    Checkbox(
                      
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        }),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'I have read and i agree with the \n',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(204, 0, 0, 0),
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms and conditions ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: 'of SWAG-IN'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;

                        if (formField.currentState!.validate()) {
                          if (isChecked) {
                            passwordConformer();
                            signUp().then((value) {
                              showSpinner = false;
                              successAlert();
                            });

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          } else {
                            errorAlert();
                          }
                        }
                      });
                    },
                    child: const Text('SignUp'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

