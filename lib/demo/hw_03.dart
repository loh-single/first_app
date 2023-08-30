import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.red)),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<FoodLocation> _listItem = [
    FoodLocation(
        'An BBQ Dong Khoi',
        'Vincom Center, No. 70 Le Thanh Ton,  Ben Nghe Ward, District 1, HCMC',
        'assets/image/image_expand_01.png'),
    FoodLocation(
        'An BBQ Su Van Hanh',
        'No. 716 Su Van Hanh, Ward 12, District 10, HCMC',
        'assets/image/image_expand_01.png'),
    FoodLocation(
        'An BBQ Nguyen Van Cu',
        'No. 235 Nguyen Van Cu,  Nguyen Van Cu Ward, District 10, HCMC',
        'assets/image/image_expand_01.png'),
    FoodLocation(
        'An BBQ Dong Khoi',
        'Vincom Center, No. 70 Le Thanh Ton,  Ben Nghe Ward, District 1, HCMC',
        'assets/image/image_expand_01.png'),
    FoodLocation(
        'An BBQ Dong Khoi',
        'Vincom Center, No. 70 Le Thanh Ton,  Ben Nghe Ward, District 1, HCMC',
        'assets/image/image_expand_01.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 32,
          ),
          backgroundColor: Colors.orange[50],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //widget 1
              Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //widget 1.1
                      const Text(
                        'Our restaurant',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),

                      //widget 1.2
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          children: const [
                            //widget 1.2.1
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'ALL',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            //widget 1.2.2
                            Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: Icon(Icons.keyboard_arrow_down_rounded),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),

              //widget 2
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: _listItem.length,
                  itemBuilder: (context, index) =>
                      foodLocationItem(context, _listItem[index]),
                ),
              )
            ],
          ),
        ));
  }

  Widget foodLocationItem(BuildContext context, FoodLocation item) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        //widget 1
        Image.asset(
          item.imageAddress,
          fit: BoxFit.fill,
          width: double.infinity,
        ),

        //widget 2
        Container(
            margin: const EdgeInsets.only(top: 80, left: 25, right: 25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  //widget 2.1
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //widget 2.3.1.1
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            item.name,
                          ),
                        ),

                        //widget 2.3.1.2
                        Text(
                          item.address,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),

                  //widget 2.2
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFAD3F32))),
                    child: const Text('Reserve'),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

class FoodLocation {
  final String name;
  final String address;
  final String imageAddress;

  FoodLocation(this.name, this.address, this.imageAddress);
}
