import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Bookshelf_01.dart';
import 'google_auth/user_page.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Log in with your email & password",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 480,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: 'Email ',
                              suffixIcon: IconButton(
                                icon: const FaIcon(FontAwesomeIcons.mailchimp),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.eyeSlash,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 350,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const bookshelf_01_page()),
                                );
                              },
                              child: const Text(
                                "LOG IN",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              //  Divider(
                              //   height: 20,
                              //   thickness: 5,
                              //  indent: 20,
                              //  endIndent: 20,
                              //  ),
                              Text(
                                "Log in With",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              // Divider(
                              //  height: 20,
                              //  thickness: 5,
                              //  indent: 20,
                              //  endIndent: 20,
                              //  ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon:
                                        const FaIcon(FontAwesomeIcons.facebook),
                                    onPressed: () {}),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon:
                                        const FaIcon(FontAwesomeIcons.twitter),
                                    onPressed: () {}),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon: const FaIcon(
                                        FontAwesomeIcons.googlePlusG),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => UserPage()),
                                      );
                                    }),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
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
