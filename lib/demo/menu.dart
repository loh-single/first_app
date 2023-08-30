import 'package:flutter/material.dart';
import 'package:frist_app/demo/details.dart';

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class BakeHouse {
  String name;
  String price;
  String image;
  Widget button;

  BakeHouse(
    this.name,
    this.price,
    this.image,
    this.button,
  );
}

class _MenuPageState extends State<MenuPage> {
  final List<BakeHouse> _listitem = [
    BakeHouse('Crosss saint', '20 Dollar', 'assets/image/croissant.jpg',
        DetailsPage1()),
    BakeHouse(
        'Gata Bake', '30 Dollar', 'assets/image/gato.jpg', DetailsPage2()),
    BakeHouse(
        'Taramisu', '40 Dollar', 'assets/image/taramisu.jpg', DetailsPage3()),
    BakeHouse(
        'Honey Bake', '50 Dollar', 'assets/image/honey.jpg', DetailsPage4()),
    BakeHouse(
        'Corn Bake', '60 Dollar', 'assets/image/corn.jpg', DetailsPage5()),
  ];

  // final List<Details> _listDetails = [
  //   Details(DetailsPage1()),
  //   Details(DetailsPage2()),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Bake House',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart,
            size: 40,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                    color: Colors.red,
                  ),
              itemCount: _listitem.length,
              itemBuilder: (context, index) {
                return item(context, _listitem[index]);
              }),

          //physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

Widget item(BuildContext context, BakeHouse item) {
  return Container(
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item.price,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                color: Colors.white,
                //height: 200,
                padding: const EdgeInsets.only(bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.fill,
                    height: 150,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 20,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => item.button,
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 177, 172, 172),
                        // side: BorderSide(width: 500),
                        minimumSize: const Size(100, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      weight: 10,
                      size: 30,
                    )),
              )
            ],
          ),
        )
      ],
    ),
  );
}
