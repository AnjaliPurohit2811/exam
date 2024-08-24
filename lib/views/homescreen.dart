import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 95,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         Row(
                          children: [
                            Image.asset('asset/img/subtract.png'),
                            SizedBox(
                              width: width / 95,
                            ),
                            Text('SC.' , style: TextStyle(color: Colors.black , fontSize: 30, fontWeight: FontWeight.bold),)

                          ], 
                         ),
                        SizedBox(
                          width: 350,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('listing');
                                },
                                child: const Text('New Arrivals',
                                    style:
                                    TextStyle(fontWeight: FontWeight.w600)),
                              ),
                              const Text('Men',
                                  style:
                                  TextStyle(fontWeight: FontWeight.w600)),
                              const Text('Women',
                                  style:
                                  TextStyle(fontWeight: FontWeight.w600)),
                              const Text('Kids',
                                  style:
                                  TextStyle(fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(CupertinoIcons.cart),
                              Icon(CupertinoIcons.heart),
                              Icon(CupertinoIcons.person),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: height / 1.3,
                    width: width / 2.5,
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Puma\nRunning SX',
                            style: GoogleFonts.baskervville(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'The shoes that moved mountains for eternity and still does so\nwith swift touch of modernism',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade600),
                          ),
                          SizedBox(
                            height: height / 20,
                          ),
                          Text(
                            '62,000 RWF',
                            style: GoogleFonts.roboto(
                                fontSize: 50, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height / 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height / 20,
                            width: width / 14,
                            color: Colors.red,
                            child: const Text("Add to cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 1.3,
                    width: width / 2,
                    child: Stack(
                      children: [
                        Center(
                          child: Opacity(
                            opacity: 0.35,
                            child: Container(
                              height: height / 2,
                              width: height / 2,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(colors: [
                                  Color(0xffFEECE2),
                                  Color(0xffFFC5C5),
                                  Color(0xffC3ACD0),
                                ]),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Positioned(
                            width: height / 2.5,
                            height: height / 2.5,
                            child: Image.asset('Asset/img/rectangle 4.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / .5,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'All the new Arrivals',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: height / 2.5,
                            width: width / 7,
                            color: Colors.white,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height / 95,
                                ),
                                Container(
                                  height: height / 3.5,
                                  width: width / 8,
                                  color: Colors.grey.shade200,
                                  child: Image.asset('asset/img/rectangle 4.png',
                                      fit: BoxFit.fill),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Adidas Beluga'),
                                        Text('35,000RWF'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height / 2.5,
                            width: width / 7,
                            color: Colors.white,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height / 95,
                                ),
                                Container(
                                  height: height / 3.5,
                                  width: width / 8,
                                  color: Colors.grey.shade200,
                                  child: Image.asset('asset/img/rectangle 25.png',
                                      fit: BoxFit.fill),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Nike Zoom'),
                                        Text('35,000RWF'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height / 2.5,
                            width: width / 7,
                            color: Colors.white,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height / 95,
                                ),
                                Container(
                                  height: height / 3.5,
                                  width: width / 8,
                                  color: Colors.grey.shade200,
                                  child: Image.asset('asset/img/rectangle 24.png',
                                      fit: BoxFit.fill),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Nike Air Jorden XT'),
                                        Text('35,000RWF'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height / 2.5,
                            width: width / 7,
                            color: Colors.white,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height / 95,
                                ),
                                Container(
                                  height: height / 3.5,
                                  width: width / 8,
                                  color: Colors.grey.shade200,
                                  child: Image.asset('asset/img/rectangle 26.png',
                                      fit: BoxFit.cover),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Nike Wobbler'),
                                        Text('35,000RWF'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: height / 12,
                          ),
                          const Align(
                              alignment: Alignment.center,
                              child: Text('Good sneakers',
                                  style: TextStyle(
                                      fontSize: 25,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600))),
                          const Align(
                              alignment: Alignment.center,
                              child: Text('take you good place',
                                  style: TextStyle(
                                      fontSize: 25,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600))),
                          SizedBox(
                            height: height / 70,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'look no further, this is where you find the best pair!',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey.shade600,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset('asset/img/Group 30.png'),
                      ),
                      SizedBox(
                        height: height / 5,
                      ),
                      const Divider(),
                    SizedBox(
                      height: 30,
                    ),
                      Image.asset('asset/img/Group 29.png')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}