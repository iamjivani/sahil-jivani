import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class registerpage extends StatefulWidget {
  const registerpage({Key? key}) : super(key: key);

  @override
  _registerpageState createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
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
                  children: [
                    Text(
                      "Join BookWorm Today!",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Create an account to start reading",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
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
                              border: OutlineInputBorder(),
                              hintText: 'Full Name',
                              suffixIcon: IconButton(
                                icon: FaIcon(FontAwesomeIcons.user),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Email ',
                              suffixIcon: IconButton(
                                icon: FaIcon(FontAwesomeIcons.mailchimp),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.eyeSlash,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 350,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "REGISTER NOW",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(fontSize: 15),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //  Divider(
                              //   height: 20,
                              //   thickness: 5,
                              //  indent: 20,
                              //  endIndent: 20,
                              //  ),
                              Text(
                                "Register With",
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
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.facebook),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.twitter),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.googlePlusG),
                                    onPressed: () {}),
                              ),
                              SizedBox(
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
