import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool _isObscure = true;
  bool _confirmisObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: true),
                child: Container(
                  height: 250,
                  color: Colors.purple,
                  child: const Center(
                      child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.purple),
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[100],
                          labelText: 'Full Name',
                          labelStyle: const TextStyle(color: Colors.purple),
                          focusedBorder: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Colors.purple,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.purple),
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[100],
                          labelText: 'Email',
                          labelStyle: const TextStyle(color: Colors.purple),
                          focusedBorder: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.purple,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.purple),
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[100],
                          labelText: 'Phone Number',
                          labelStyle: const TextStyle(color: Colors.purple),
                          focusedBorder: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.local_phone_outlined,
                            color: Colors.purple,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[100],
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.purple),
                          focusedBorder: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.purple,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: Colors.purple,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _confirmisObscure,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[100],
                          labelText: 'Confirm Password',
                          labelStyle: const TextStyle(color: Colors.purple),
                          focusedBorder: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.purple,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _confirmisObscure = !_confirmisObscure;
                              });
                            },
                            icon: Icon(_confirmisObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: Colors.purple,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(400, 50),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      // OutlineInputBorder(
                      //    borderRadius: BorderRadius.circular(20)),),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(color: Colors.purple)),
                        minimumSize: const Size(400, 50),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.purple, fontSize: 15),
                      ),
                      // OutlineInputBorder(
                      //    borderRadius: BorderRadius.circular(20)),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
