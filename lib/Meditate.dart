import 'package:flutter/material.dart';

class Meditate extends StatefulWidget {
  const Meditate({Key? key}) : super(key: key);

  @override
  State<Meditate> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Meditate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.fromLTRB(25, 55, 25, 25),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(0, 0, 230, 0),
                    child: const Text(
                      "Meditate",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset("lib/assets/shape_2.png"),
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 50,
                      child: ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: const Color.fromRGBO(3, 158, 162, 1)),
                        child: const Text("All"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: const Color.fromRGBO(230, 254, 255, 1)),
                        child: const Text(
                          "Bible In a Year",
                          style:
                              TextStyle(color: Color.fromRGBO(3, 158, 162, 1)),
                        ),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: const Color.fromRGBO(230, 254, 255, 1)),
                        child: const Text("Dailies",
                            // ignore: unnecessary_const
                            style: const TextStyle(
                                color: Color.fromRGBO(3, 158, 162, 1))),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: const Color.fromRGBO(230, 254, 255, 1)),
                        child: const Text("Minutes",
                            style: TextStyle(
                                color: Color.fromRGBO(3, 158, 162, 1))),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: const Color.fromRGBO(230, 254, 255, 1)),
                        child: const Text("November",
                            style: TextStyle(
                                color: Color.fromRGBO(3, 158, 162, 1))),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Image.asset(
                  "lib/assets/image1.png",
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: const Text(
                  "A Song of Moon",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                alignment: Alignment.centerLeft,
                child: const Text("Start with the basics"),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset("lib/assets/shape3.png"),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 210, 0),
                      child: const Text(
                        "9 sessions",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Start",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset("lib/assets/chevron.forward.png"))
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 150,
                        child: Image.asset("lib/assets/image6.png"),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.fromLTRB(0, 10, 35, 0),
                        child: const Text(
                          "The Sleep Hour",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.fromLTRB(0, 0, 45, 10),
                        child: const Text(
                          "Ashna Mukherjee",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(0, 0, 0, 0.5)),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Image.asset("lib/assets/shape3.png")),
                          const Text(
                            "3 sessions",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.5)),
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child:
                                  Image.asset("lib/assets/chevron.forward.png"))
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        child: Image.asset("lib/assets/image5.png"),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: const Text(
                          "Easy On the Mission",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.fromLTRB(25, 0, 0, 10),
                        child: const Text("Peter Mach",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(0, 0, 0, 0.5))),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                              child: Image.asset("lib/assets/shape3.png")),
                          Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: const Text(
                                "5 minutes",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child:
                                  Image.asset("lib/assets/chevron.forward.png"))
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 150,
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Image.asset("lib/assets/image7.png"),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.fromLTRB(0, 10, 45, 0),
                        child: const Text(
                          "Relax With Me",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.fromLTRB(0, 0, 55, 10),
                        child: const Text("Amanda James",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(0, 0, 0, 0.5))),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Image.asset("lib/assets/shape3.png")),
                          const Text(
                            "3 sessions",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.5)),
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child:
                                  Image.asset("lib/assets/chevron.forward.png"))
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Image.asset("lib/assets/image8.png"),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: const Text(
                          "Sun and Energy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.fromLTRB(25, 0, 0, 10),
                        child: const Text("Micheal Hiu",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(0, 0, 0, 0.5))),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                              child: Image.asset("lib/assets/shape3.png")),
                          Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: const Text(
                                "5 minutes",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child:
                                  Image.asset("lib/assets/chevron.forward.png"))
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
