import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_instagram/utils/colors.dart';
import 'package:flutter_instagram/widgets/text_field_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                    // text field input for email
                    TextFieldInput(
                        textEditingController: _emailController,
                        hintText: 'Enter your email',
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(height: 24),
                    // text field input for password
                    TextFieldInput(
                      textEditingController: _passwordController,
                      hintText: 'Enter your password',
                      textInputType: TextInputType.visiblePassword,
                      isPass: true,
                    ),
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
