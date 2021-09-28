import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Register.dart';
import 'login.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: homepage());
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 380,
                    height: 700,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 380,
                          height: 470,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.menu_book,
                                  size: 100, color: Colors.white),
                              Text(
                                "Book ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 380,
                          height: 230,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  width: 320,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                registerpage()),
                                      );
                                    },
                                    child: Text(
                                      "Registration",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 320,
                                height: 50,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => loginpage()),
                                    );
                                  },
                                  child: Text(
                                    "LOG IN",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        " by signing up you agree to our",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "ToS",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.blue),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Privacy",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Policy",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.blue),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Cookies Policy",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
