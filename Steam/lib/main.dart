import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popover/popover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Steam(),
    );
  }
}

class Steam extends StatefulWidget {
  const Steam({Key? key}) : super(key: key);

  @override
  State<Steam> createState() => _SteamState();
}

class _SteamState extends State<Steam> {

  final List<String> images = [
    'https://cdn.akamai.steamstatic.com/steam/apps/294100/header.jpg?t=1650485223',
    'https://cdn.akamai.steamstatic.com/steam/apps/2087030/header.jpg?t=1663517389',
    'https://cdn.akamai.steamstatic.com/steam/apps/380600/header_ukrainian.jpg?t=1666252916',
    'https://cdn.akamai.steamstatic.com/steam/apps/868270/header.jpg?t=1665591177',
    'https://cdn.akamai.steamstatic.com/steam/apps/1085660/header.jpg?t=1661876523',
    'https://cdn.akamai.steamstatic.com/steam/apps/1687950/header.jpg?t=1666326569',
    'https://cdn.cloudflare.steamstatic.com/steamdeck/images/social_media_image.jpg',
  ];
  final List<String> names = [
    'RimWorld',
    'Shatterline',
    'Fishing Planet',
    'The Cycle: Frontier',
    'Destiny 2',
    'Personal 5 Royal',
    'Steam Desc',
  ];
  final List<String> price = [
    '429₴',
    'Вільний доступ',
    'Вільний доступ',
    'Вільний доступ',
    'Вільний доступ',
    '1 799₴',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(28,45,71,1),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
              backgroundColor: const Color.fromRGBO(23,26,33,1),
              flexibleSpace: Column(
                children: const [
                  TopHeader(),
                  BottomHeader(),
                ],
              ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MainPage(),
              const TextBetweenMainPageAndCarousel(),
              FirtsCarousel(images: images, names: names, price: price),
              const News(),
              const TextBetweenNewsAndSecondCarousel(),
              FirtsCarousel(images: images, names: names, price: price),
            ],
          ),
        ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.shop,color: Colors.blue,),
                label: 'Home',
                backgroundColor: Color.fromRGBO(32,33,38,1),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.news_solid),
                label: 'Business',
                backgroundColor: Color.fromRGBO(32,33,38,1),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.safety_check),
                label: 'School',
                backgroundColor: Color.fromRGBO(32,33,38,1),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bell),
                label: 'Settings',
                backgroundColor: Color.fromRGBO(32,33,38,1),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.line_horizontal_3),
                label: 'Settings',
                backgroundColor: Color.fromRGBO(32,33,38,1),
              ),
            ],
            selectedItemColor: const Color.fromRGBO(32,33,38,1),
          )
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(62,93,148,1),
            Color.fromRGBO(18,37,113,1),
        ]
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
              child: Row(
                children: [
                  const Image(
                    width: 25,
                    height: 25,
                    image: NetworkImage(
                        'https://steamuserimages-a.akamaihd.net/ugc/98351418449351690/FFB49D91F536E3CD46D04A6B570944D5D576E054/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                    child: Text('Моя крамниця',style: GoogleFonts.comfortaa(color: Colors.white),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Text('Нові й варті уваги',style: GoogleFonts.comfortaa(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Text('Категорії',style: GoogleFonts.comfortaa(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Text('Крамниця жетонів',style: GoogleFonts.comfortaa(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Text('Новини',style: GoogleFonts.comfortaa(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Text('Лабораторії',style: GoogleFonts.comfortaa(color: Colors.white),),
            ),
          ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}


class TextBetweenNewsAndSecondCarousel extends StatelessWidget {
  const TextBetweenNewsAndSecondCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Особливі пропозиції',style: GoogleFonts.comfortaa(color: Colors.white),),
          Row(
            children: [
              Text('Більше',style: GoogleFonts.comfortaa(color: Colors.grey),),
              const Icon(Icons.arrow_forward_ios,color: Colors.grey,)
            ],
          ),
        ],
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
      child: Image(image: NetworkImage('https://s-cdn.sportbox.ru/images/styles/upload/fp_fotos/d8/18/2c05f12a64c1d4bacac9ba75faaa22776347ea3f2a914331247976.jpg'),)
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: NetworkImage("https://cdn.cloudflare.steamstatic.com/steam/apps/730/capsule_616x353.jpg?t=1641233427")
    );
  }
}

class TextBetweenMainPageAndCarousel extends StatelessWidget {
  const TextBetweenMainPageAndCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(31,62,93,1),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(3, 15, 0, 0),
          child: Text("ВІДІБРАНЕ І РЕКОМЕНДОВАНЕ", style: GoogleFonts.comfortaa(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class FirtsCarousel extends StatelessWidget {
  const FirtsCarousel({
    Key? key,
    required this.images,
    required this.names,
    required this.price,
  }) : super(key: key);

  final List<String> images;
  final List<String> names;
  final List<String> price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      color: const Color.fromRGBO(31,62,93,1),
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, index, realIdx) {
          return Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(images[index],
                      fit: BoxFit.fill),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black12,
                        Colors.blueAccent,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(names[index],style: GoogleFonts.comfortaa(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                          child: Text(price[index],style: GoogleFonts.comfortaa(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
        ),
      ),
    );
  }
}

class BottomHeader extends StatelessWidget {
  const BottomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,0,0,5),
            child: Row(
              children: [
                Text('Меню', style: GoogleFonts.comfortaa(color: Colors.white),),
                const Icon(Icons.arrow_drop_down,color: Colors.white,),
              ],
            ),
          ),
          onTap: () {
            showPopover(
              context: context,
              bodyBuilder: (context) => const ListItems(),
              arrowHeight: 0,
              arrowWidth: 0,
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5,0,0,5),
          child: Text('Список Бажаного',style: GoogleFonts.comfortaa(
            color: Colors.white,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(5,0,0,5),
            child: Row(
              children: [
                Text('Гаманець',
                  style: GoogleFonts.comfortaa(
                    color: Colors.white,
                  ),
                ),
                Text('(41,68₴)',
                  style: GoogleFonts.comfortaa(
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
}

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 15),
            child: TextFormField(
              style: GoogleFonts.comfortaa(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(34,65,94,255),
                filled: true,
                border: InputBorder.none,
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(7),
                  child: Image(
                    width: 14,
                    height: 14,
                    image: NetworkImage('https://cdn.cloudflare.steamstatic.com/steamdeck/images/steamdeck_steamlogo.png'),
                  ),
                ),
                contentPadding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                hintText: 'Steam',
                hintStyle: GoogleFonts.comfortaa(
                  color: Colors.grey,
                ),
                counterStyle: GoogleFonts.comfortaa(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 15),
          child: Image(
            width: 40,
            height: 40,
            image: NetworkImage(
                'https://steamuserimages-a.akamaihd.net/ugc/98351418449351690/FFB49D91F536E3CD46D04A6B570944D5D576E054/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
          ),
        ),

      ],
    );
  }
}
