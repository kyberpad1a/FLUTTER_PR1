import 'package:flutter/material.dart';

class MindDeepRelax extends StatefulWidget {
  const MindDeepRelax({Key? key}) : super(key: key);

  @override
  State<MindDeepRelax> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MindDeepRelax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(0,100,0,0),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 201, 76, 1),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Image.asset('lib/assets/frame23.png'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: const Text('Peter Mach'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
              child: const Text(
                "Mind Deep Relax",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
                child: const Text(
                  "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(
                25,
                0,
                25,
                15,
              ),
              child: ElevatedButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(3, 158, 162, 1),
                    shape: const StadiumBorder()),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(90, 0, 10, 0),
                      child: Image(image: AssetImage("lib/assets/shape.png")),
                    ),
                    Container(
                      // ignore: sort_child_properties_last
                      child: const Text("Play Next Session"),
                      height: 50,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                          ),
                          child:
                              const Image(image: AssetImage("lib/assets/shape.png")),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: const Text(
                            "Sweet Memories",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("December 29 pre-launch"),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    Container(
                        padding: const EdgeInsets.fromLTRB(50, 0, 25, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent
                            
                          ),
                          child:
                              const Image(image: AssetImage("lib/assets/points.png")),
                        )),
                  ],
                ),
              ],
            ),
            const Divider(color: Colors.grey),
             Row(
              children: [
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: const Color.fromRGBO(3, 158, 162, 1),
                          ),
                          child:
                              const Image(image: AssetImage("lib/assets/shape.png")),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 53, 0),
                          child: const Text(
                            "A Day Dream",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("December 29 pre-launch"),
                      ],
                    ),
                    
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    Container(
                        padding: const EdgeInsets.fromLTRB(52, 0, 25, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent
                            
                          ),
                          child:
                              const Image(image: AssetImage("lib/assets/points.png")),
                        )),
                  ],
                ),
              ],
            ),
            const Divider(color: Colors.grey),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            primary: const Color.fromRGBO(240, 146, 53, 1),
                          ),
                          child:
                              const Image(image: AssetImage("lib/assets/shape.png")),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 53, 0),
                          child: const Text(
                            "Mind Explore",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("December 29 pre-launch"),
                      ],
                    ),
                    
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    Container(
                        padding: const EdgeInsets.fromLTRB(51, 0, 25, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent
                            
                          ),
                          child:
                              const Image(image: AssetImage("lib/assets/points.png")),
                        )),
                  ],
                ),
                
              ],
              
            ),
            const Divider(color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
