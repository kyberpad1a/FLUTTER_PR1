import 'package:flutter/material.dart';

class Medihow extends StatefulWidget {
  const Medihow({Key? key}) : super(key: key);

  @override
  State<Medihow> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Medihow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.fromLTRB(0,25,0,0),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: const Text("medinow",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w800)),),
              Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Meditate with us!",
                    style: TextStyle(color: Colors.white),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(50, 50, 50, 10),
                  child: ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(), primary: Colors.white),
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: const Text('Sign in with Apple',
                          style: TextStyle(color: Colors.black)),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 15),
                  child: ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(), primary: Colors.white),
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: const Text('Continue with Email or Phone',
                          style: TextStyle(color: Colors.black)),
                    ),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 55),
                  child: const Text('Continue with Google',
                      style: TextStyle(color: Colors.white))),
              Expanded(child: Image.asset("lib/assets/image3.png")),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(3, 158, 162, 1));
  }
}
