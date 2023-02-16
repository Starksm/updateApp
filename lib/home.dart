import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Column(
                    children: [
                      for (int i = 0; i < 100; ++i)
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: CircleAvatar(
                                  radius: 20,
                                ),
                                title: Text('Saurav Mehta'),
                              ),
                              const ListTile(
                                title: Text('ajdwhksahd kashd kashdhaskdhasdha'
                                    'asdhsamdbn mjsandm sandmansdmnsadnaksdn kjas'
                                    'asjdhjkasndkasndknaskdnaskdn ask ndksa ndajhkasjdhashdk'
                                    'asjbdjkasbdkahskdjasd khaskdjhaskjdhkasdh a kasnd'
                                    'abdjs ajkdhnsakjdkasdk asjdkjaskdaskdhaskdh'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                     Container(
                                       padding:  const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                       child:
                                       LikeButton(
                                         size: 30,
                                         circleColor: const CircleColor(
                                             start: Color(0xff00ddff),
                                             end: Color(0xff0099cc)),
                                         bubblesColor: const BubblesColor(
                                           dotPrimaryColor: Color(0xff33b5e5),
                                           dotSecondaryColor: Color(0xff0099cc),
                                         ),
                                         likeBuilder: (bool isLiked) {
                                           return Icon(
                                             Icons.thumb_up_off_alt_sharp,
                                             color: isLiked
                                                 ? Colors.red
                                                 : Colors.grey,
                                             size: 18,
                                           );
                                         },
                                         likeCount: 0,
                                       ),
                                     ),
                                    ],

                              ),
                            ],
                          ),
                        )
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
