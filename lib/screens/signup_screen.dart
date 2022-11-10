import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';
import '../widgets/text_field_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Container(), flex: 2),
                    // logo
                    SvgPicture.asset('assets/ic_instagram.svg',
                        color: primaryColor, height: 64),
                    const SizedBox(height: 64),
                    // circular widget to accept and show our selected file
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 64,
                          backgroundImage:
                              NetworkImage('https://i.imgflip.com/2vw2hw.jpg'),
                        ),
                        Positioned(
                            bottom: -10,
                            left: 80,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.black,
                              child: IconButton(
                                  onPressed: (() {}),
                                  icon: const Icon(Icons.add_a_photo),
                                  style: IconButton.styleFrom(
                                    foregroundColor: Colors.white70,
                                    backgroundColor: Colors.black,
                                  )),
                            ))
                      ],
                    ),
                    const SizedBox(height: 24),
                    // text field input for username
                    TextFieldInput(
                        hintText: 'Enter your username',
                        textEditingController: _usernameController,
                        textInputType: TextInputType.text),
                    const SizedBox(height: 24),
                    // text field input for email
                    TextFieldInput(
                        hintText: 'Enter your email',
                        textEditingController: _emailController,
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(height: 24),
                    // text field input for password
                    TextFieldInput(
                      hintText: 'Enter your password',
                      textEditingController: _passwordController,
                      textInputType: TextInputType.visiblePassword,
                      isPass: true,
                    ),
                    const SizedBox(height: 24),
                    // text field input for bio
                    TextFieldInput(
                        hintText: 'Enter your bio',
                        textEditingController: _bioController,
                        textInputType: TextInputType.text),
                    const SizedBox(height: 24),
                    // login btn
                    Container(
                      child: const Text('Login'),
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          color: blueColor),
                    ),
                    const SizedBox(height: 12),
                    Flexible(
                      child: Container(),
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text("Don't have an account?"),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                        Container(
                          child: const Text(
                            "Sign up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        )
                      ],
                    )

                    // transition to sign up
                  ],
                ))));
  }
}
