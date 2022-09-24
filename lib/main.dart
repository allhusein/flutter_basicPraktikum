import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = true;

  final titles = [
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Luxury Room",
    "Delux Room",
    "Delux Room",
    "Delux Room",
    "Delux Room",
    "Delux Room",
    "Delux Room",
  ];

  final subtitles = [
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.500.000/night",
    "1.000.000/night",
    "1.000.000/night",
    "1.000.000/night",
    "1.000.000/night",
    "1.000.000/night",
  ];

  final icons = [
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
    Icons.ads_click,
  ];
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 151, 8, 63),
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 48,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Image.network(
                            "https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20045993-2aeb557a0b812c5c210b0fa5d6b901f3.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768",
                            fit: BoxFit.cover,
                            height: 130,
                            width: 130,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Stack(
                        children: <Widget>[
                          Text(
                            "FIERIS HOTEL",
                            style: TextStyle(
                              fontSize: 30,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Color.fromARGB(255, 110, 117, 9),
                            ),
                          ),
                          const Text(
                            "FIERIS HOTEL",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Text(
                        "~Your Comfortable Rooms~",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: titles.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 48,
                          minHeight: 48,
                          maxWidth: 68,
                          maxHeight: 68,
                        ),
                        child: Image.network(
                            "https://aecperhotelanbanyuwangi.com/wp-content/uploads/2020/03/62570076.jpg"),
                      ),
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      trailing: Icon(icons[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
