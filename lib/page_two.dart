import 'package:flutter/material.dart';
import 'package:flutter_application_5/wiget.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 237, 227),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.93,
              height: MediaQuery.of(context).size.height * 0.59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 194, 183, 247),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "Sign up as",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SignUpWiget(
                      icon: Icons.person_sharp,
                      text: "customer",
                      text2:
                          "By singing up you are agree to term & \nconditions and privacy"),
                  const SizedBox(
                    height: 15,
                  ),
                  const SignUpWiget(
                      icon: Icons.storefront_sharp,
                      text: "Marchant",
                      text2:
                          "By singing up you are agree to term & \nconditions and privacy"),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black, // Default color for the text
                      ),
                      children: [
                        TextSpan(text: "By signing up, you're agree to our "),
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(
                            color: Colors
                                .blue, // Change the color for Terms & Conditions
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: " and "),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            color: Colors
                                .blue, // Change the color for Privacy Policy
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.82,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red.shade400),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.black, // Default color for the text
                      ),
                      children: [
                        TextSpan(text: "Joined us before? "),
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                            color: Colors.red, // Change the color for "Login"
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
