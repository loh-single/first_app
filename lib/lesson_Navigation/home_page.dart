import 'package:flutter/material.dart';
import 'package:frist_app/lesson_Navigation/route.dart';

class MyHomePageNavi extends StatefulWidget {
  const MyHomePageNavi({super.key, this.dataFromLogin});
  final String? dataFromLogin;

  @override
  State<MyHomePageNavi> createState() => _MyHomePageNaviState();
}

class _MyHomePageNaviState extends State<MyHomePageNavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Login'),
      ),
      body: Container(
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
        //color: Colors.green,
        child: SingleChildScrollView(
          //physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Container(
            //padding: const EdgeInsets.only(left: 15),
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 90,
                  color: Colors.brown,
                  // decoration: BoxDecoration(
                  //     color: Colors.brown,
                  //     border: Border.all(color: Colors.white)),
                  child: Text(
                    '${widget.dataFromLogin}',
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 60,
                        //decoration: const BoxDecoration(border: ),
                        child: const TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'User name',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 60,
                        //decoration: const BoxDecoration(border: ),
                        child: const TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text('Forgot password?')),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, NamedRoute.overlayPage);
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 50, color: Colors.black),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(1000, 30)
                        //margin: const EdgeInsts.all(50),

                        ),
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // body: Container(
      //   color: Colors.orange,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start, // can ngang
      //       crossAxisAlignment: CrossAxisAlignment.stretch, // can doc
      //       children: <Widget>[
      //         const Text(
      //           'thu 1',
      //           textAlign: TextAlign.start,
      //           overflow: TextOverflow.ellipsis, // 3 cham neu dai
      //           style: TextStyle(
      //             color: Colors.red,
      //             fontSize: 40,
      //           ),
      //         ),

      //         Padding(
      //           padding: const EdgeInsets.only(left: 14),
      //           child: Row(
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(
      //                     horizontal: 15, vertical: 20),
      //                 child: Container(
      //                   color: Colors.black,
      //                   child: const Text('thu 2',
      //                       style: TextStyle(color: Colors.white)),
      //                 ),
      //               ),
      //               Container(
      //                 color: Colors.black,
      //                 child: const Text(
      //                   'thu 4',
      //                   style: TextStyle(color: Colors.white),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           // padding:
      //           //     const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      //           margin:
      //               const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      //           color: Colors.black,
      //           child:
      //               const Text('thu 3', style: TextStyle(color: Colors.white)),
      //         ),
      //         // const Text(
      //         //   'You have pushed the button this many times:',
      //         //   textAlign: TextAlign.center, //can le
      //         //   style: TextStyle(
      //         //     color: Colors.yellow, fontWeight: FontWeight.w200, //in dam
      //         //   ),
      //         // ),
      //         // RichText(
      //         //   text: const TextSpan(
      //         //     children: [
      //         //       TextSpan(text: 'You '),
      //         //       TextSpan(
      //         //         text: 'Have ',
      //         //         style: TextStyle(
      //         //           color: Colors.blue,
      //         //           fontStyle: FontStyle.italic,
      //         //           fontWeight: FontWeight.bold,
      //         //         ),
      //         //       ),
      //         //       TextSpan(text: 'Pushed the button asdasd'),
      //         //     ],
      //         //   ),
      //         // ),
      //         Text(
      //           '$_counter',
      //           style: Theme.of(context).textTheme.headlineMedium,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
