import 'package:delmart/shared/theme.dart';
import 'package:delmart/ui/widgets/custom_filled_button.dart';
import 'package:delmart/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;

// this is the login page
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool obsecureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  IconData icon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                child: Image(
                  image: AssetImage('assets/images/header.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: dark,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(children: [
                        // email input
                        CustomTextFormField(
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.email,
                            color: softGray,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          controller: emailController,
                          onSaved: (value) => emailController.text = value!,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // password input
                        CustomTextFormField(
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: softGray,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsecureText = !obsecureText;
                                icon = obsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off;
                              });
                            },
                            icon: Icon(
                              icon,
                              color: softGray,
                            ),
                          ),
                          controller: emailController,
                          obscureText: obsecureText,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                          onSaved: (value) => passwordController.text = value!,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Checkbox(
                                  value: true,
                                  onChanged: null,
                                ),
                                Text(
                                  "Keep Signed In",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xff303733),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/forgot');
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomFilledButton(
                          gradient: gradient,
                          text: "Login",
                          onPressed: () {
                            // Validate returns true if the form is valid, or false otherwise.
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(context, '/home');
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "Or Login With",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: dark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // google and facebook login
                        Row(
                          children: [
                            Expanded(
                              child: CustomFilledButton(
                                  color: const Color(0xffdb3236),
                                  text: "Google",
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.google,
                                    color: white,
                                  )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: CustomFilledButton(
                                color: const Color(0xff3b5998),
                                text: "Facebook",
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: dark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
