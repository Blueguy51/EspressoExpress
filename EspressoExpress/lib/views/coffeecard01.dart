part of 'saltpapershotgun.dart';

IconData icon = Icons.favorite_border;

class CoffeeCard01 extends StatefulWidget {
  const CoffeeCard01({super.key});

  @override
  State<CoffeeCard01> createState() => _CoffeeCard01State();
}

class _CoffeeCard01State extends State<CoffeeCard01> {
  bool isFavorite = false;
  IconData icon = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    var shotgunbarrel = AppBar(
      title: Text(
        "Americano",
        style: GoogleFonts.sacramento(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.brown.shade800,
    );
    var paperImage = Container(
      height: 142,
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/americano.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
    var saltImage = Container(
      height: 130,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/americano1.jpeg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/americano2.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/americano3.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/americano4.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/americano5.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    var shotgunTitle = Container(
      height: 40,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          'Description',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Times New Roman',
            fontSize: 28,
            fontWeight:
                FontWeight.w600, //you can use bold --> FontWeight.bold//
          ),
        ),
      ),
    );
    var paperdescript = Container(
      height: 300,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "    Caffè Americano",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            " (also known as Americano or American; Italian pronunciation: [kafˈfɛ ameriˈkaːno]; Spanish: café americano, literally American coffee) is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. Its strength varies with the number of shots of espresso and amount of water added. The name is also spelled with varying capitalization and use of diacritics: e.g., café americano.",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "    According to the story, this Americano coffee came thanks to the American soldiers who came to Italy. At that time, espresso coffee was less familiar and too bitter for them. Therefore, to make it fit on the tongue easily, the soldiers added water to their espresso coffee. Long story short, Americano coffee has become a worldwide drink, not only in America.",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "    One of the markers of espresso quality is the crema, which is the golden foam on the top layer. Well, because in making Americano coffee it is made by pouring hot water after espresso, therefore there is no more crema in Americano coffee, even though Americano is served hot."),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "    Talking about crema, there is also black coffee that looks similar to Americano, but has a lot of crema, namely long black coffee. Long black coffee is a popular coffee in Australia and New Zealand. Americano and Long Black coffee have the same content, but different presentation techniques. In making Americano coffee, the espresso is poured first and then the hot water, while the Long Black, on the other hand, pours the hot water first and then the espresso. It is this difference in technique that makes Long Black still have crema. About the taste, of course, both are fairly similar."),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "    There are several common Americano coffee-making techniques other than using an espresso machine. The first method is the filter method, which is placing coffee grounds on filter paper in the funnel of the coffee vessel and then pouring hot water over it. Second, make Americano coffee with the french press technique. This second technique is usually used for everyday use, namely by putting coffee grounds into the french press then adding hot water and pressing it with the french press lid . Finally, you can also use the Turkish coffee method which is also known as the Arabic method."),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "    For those of you who don't like coffee with a taste that is too bitter, too thick and too sour, Americano coffee can be an option. Besides being lighter, Americano coffee can also be enjoyed cold, you only need to add ice cubes."),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    var ordershotgun = Positioned(
      child: Container(
        height: 37,
        width: 110,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PaperStraw()));
          },
          child: Text(
            "Buy Coffee",
            style: TextStyle(
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.w300,
                fontSize: 15),
          ),
        ),
      ),
    );
    var spice = Container(
      child: SizedBox(height: 5),
    );

    return Scaffold(
      appBar: shotgunbarrel,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.brown.shade900, Colors.brown.shade300]),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            paperImage,
            saltImage,
            shotgunTitle,
            paperdescript,
            spice,
            ordershotgun
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
