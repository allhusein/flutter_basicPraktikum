import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Text('BERITA TERBARU'),
                    Text('PERTANDINGAN HARI INI')
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple),
            ),
          ),
          Image.network(
              "https://pict.sindonews.net/dyn/732/pena/news/2022/02/26/11/697135/5-pemain-sepak-bola-dunia-yang-pensiun-muda-salah-satunya-karena-bayi-kembar-kto.jpg"),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              'Costa Mendekat ke Palmeiras',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            color: Colors.purple,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Transfer',
              style: TextStyle(fontSize: 10),
            ),
          ),
          News(),
          News(),
          News(),
        ],
      ),
    );
  }

  Container News() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(2.0),
                  width: 180,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          "https://pict.sindonews.net/dyn/732/pena/news/2022/02/26/11/697135/5-pemain-sepak-bola-dunia-yang-pensiun-muda-salah-satunya-karena-bayi-kembar-kto.jpg")
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 247,
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  child: const Text(
                      'Pique Wasit Untungkan madrid, Koeman Tepok Jidat'),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            child: const Text('Barcelona Feb 13,2021'),
          ),
        ],
      ),
    );
  }
}
