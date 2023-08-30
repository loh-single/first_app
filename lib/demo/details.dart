import "package:flutter/material.dart";
import "package:frist_app/demo/stars_rating.dart";

class DetailsPage1 extends StatefulWidget {
  DetailsPage1({super.key});

  State<DetailsPage1> createState() => DetailsPage1State();
}

class DetailsPage1State extends State<DetailsPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.shopping_cart,
            size: 40,
            color: Colors.black,
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/image/croissant.jpg',
                fit: BoxFit.cover,
                height: 500,
                width: 400,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Cross Saint',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    '20 Dolar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            const Text(
              'Banh nay ngon lam',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
            StarsRating(),
            Container(
              color: Colors.red,
              child: const TextField(
                style: TextStyle(color: Colors.blue),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Stack(
                children: [
                  const Align(
                    heightFactor: 2,
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 177, 172, 172),
                            // side: BorderSide(width: 500),
                            minimumSize: const Size(200, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          weight: 10,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage2 extends StatefulWidget {
  DetailsPage2({super.key});

  State<DetailsPage2> createState() => DetailsPage2State();
}

class DetailsPage2State extends State<DetailsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.shopping_cart,
            size: 40,
            color: Colors.black,
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/image/gato.jpg',
                fit: BoxFit.cover,
                height: 500,
                width: 400,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Gato Bake',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    '100 Dolar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            const Text(
              'Banh nay ngon lam',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Stack(
                children: [
                  const Align(
                    heightFactor: 2,
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 177, 172, 172),
                            // side: BorderSide(width: 500),
                            minimumSize: const Size(200, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          weight: 10,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage3 extends StatefulWidget {
  DetailsPage3({super.key});

  State<DetailsPage3> createState() => DetailsPage3State();
}

class DetailsPage3State extends State<DetailsPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.shopping_cart,
            size: 40,
            color: Colors.black,
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/image/taramisu.jpg',
                fit: BoxFit.cover,
                height: 500,
                width: 400,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Taramisu Bake',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    '200 Dolar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            const Text(
              'Banh nay ngon lam',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Stack(
                children: [
                  const Align(
                    heightFactor: 2,
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 177, 172, 172),
                            // side: BorderSide(width: 500),
                            minimumSize: const Size(200, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          weight: 10,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage4 extends StatefulWidget {
  DetailsPage4({super.key});

  State<DetailsPage4> createState() => DetailsPage4State();
}

class DetailsPage4State extends State<DetailsPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.shopping_cart,
            size: 40,
            color: Colors.black,
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/image/honey.jpg',
                fit: BoxFit.cover,
                height: 500,
                width: 400,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Honey Bake',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    '150 Dolar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            const Text(
              'Banh nay ngon lam',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Stack(
                children: [
                  const Align(
                    heightFactor: 2,
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 177, 172, 172),
                            // side: BorderSide(width: 500),
                            minimumSize: const Size(200, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          weight: 10,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage5 extends StatefulWidget {
  DetailsPage5({super.key});

  State<DetailsPage5> createState() => DetailsPage5State();
}

class DetailsPage5State extends State<DetailsPage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.shopping_cart,
            size: 40,
            color: Colors.black,
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/image/corn.jpg',
                fit: BoxFit.cover,
                height: 500,
                width: 400,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Corn Bake',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    '250 Dolar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            const Text(
              'Banh nay ngon lam',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Stack(
                children: [
                  const Align(
                    heightFactor: 2,
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 177, 172, 172),
                            // side: BorderSide(width: 500),
                            minimumSize: const Size(200, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          weight: 10,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
