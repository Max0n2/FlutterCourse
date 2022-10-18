import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int counter1 = 10;
  int counter2 = 2;
  int counter3 = 1;
  int counter4 = 5;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Підбірка мемів про міст",
            textAlign: TextAlign.center,
            style: GoogleFonts.comfortaa(
              fontSize: 20,
            ),
          ),
          backgroundColor: const Color.fromRGBO(15,43,54,1),
        ),
        backgroundColor: const Color.fromRGBO(15,43,54,1),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:  const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://img.tsn.ua/cached/448/tsn-15890496c3fba55a55e21f0ca3090d06/thumbs/608xX/d8/d0/e63132912675e4c104916e2f2b44d0d8.jpeg',
                    ),
                  ),
                ),
              ),
              Container(
                width: width,
                height: height * 0.1,
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              setState(() {
                                counter1++;
                              });
                            },
                          child: const Text("Like"),
                        ),
                        ),
                        Text(
                          '$counter1',
                        ),
                      ],
                    ),
                    Text("Файно горить",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.comfortaa(
                    ),
                    ),
                  ],
                )
              ),
              Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:  const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://img.tsn.ua/cached/373/tsn-15890496c3fba55a55e21f0ca3090d06/thumbs/608xX/ad/9b/e1354c9df201aeca583606e475a39bad.jpeg',
                    ),
                  ),
                ),
              ),
              Container(
                  width: width,
                  height: height * 0.1,
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  counter2++;
                                });
                              },
                              child: const Text("Like"),
                            ),
                          ),
                          Text(
                            '$counter2',

                          ),
                        ],
                      ),
                      Text("Гори Гори Ясно",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comfortaa(
                        ),
                      ),
                    ],
                  )
              ),
              Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:  const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://img.tsn.ua/cached/365/tsn-15890496c3fba55a55e21f0ca3090d06/thumbs/608xX/11/66/aab09f6d2b517e43922aa9fd56906611.jpeg',
                    ),
                  ),
                ),
              ),
              Container(
                  width: width,
                  height: height * 0.1,
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  counter3++;
                                });
                              },
                              child: const Text("Like"),
                            ),
                          ),
                          Text(
                            '$counter3',
                          ),
                        ],
                      ),
                      Text("😅",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comfortaa(
                        ),
                      ),
                    ],
                  )
              ),
              Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:  const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://s.0462.ua/section/newsInText/upload/images/news/intext/000/054/915/30993990352369072964363428546645535237355853n_634145e3536b0.jpg',
                    ),
                  ),
                ),
              ),
              Container(
                  width: width,
                  height: height * 0.1,
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  counter4++;
                                });
                              },
                              child: const Text("Like"),
                            ),
                          ),
                          Text(
                            '$counter4',
                          ),
                        ],
                      ),
                      Text("😂😂😂",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comfortaa(
                        ),
                      ),
                    ],
                  )
              ),
            ],
          )
        ),
    );
  }
}
