import 'package:flutter/material.dart';
import 'package:flutter_tugas_3_listiview/listView_horizon.dart';
import 'package:flutter_tugas_3_listiview/listView_verti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 3',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Tugas 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12.0),
                  child: Text("BERITA TERBARU",
                      style: TextStyle(fontSize: 15, 
                      color: Colors.black, fontWeight: FontWeight.bold),),
                ),
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12.0),
                  child: Text("PERTANDINGAN HARI INI",
                      style: TextStyle(fontSize: 15, 
                      color: Colors.black, fontWeight: FontWeight.bold),),
                ),
              ],
          ),
          // Horizontal List View
          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget> [
              ListviewHorizon('https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000', 
              'Costa Mendekat Ke Palmeira', 'Transfer'),
              ListviewHorizon('https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2022/09/24/messi-jatuhjpg-20220924102441.jpg', 
              'Messi Cidera Musim Lalu', 'Transfer'),
              ListviewHorizon('https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2022/09/27/capturejpg-20220927123213.jpg', 
              'Ronald Araujo Cedera, Barca Untung', 'Transfer'),
              ListviewHorizon('https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2022/09/15/judejpg-20220915032906.jpg', 
              'Jude Bellingham Gabung Real Madrid', 'Transfer'),
              ListviewHorizon('https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2022/09/27/000_32k76q8jpg-20220927034542.jpg', 
              'Harry Maguire Bikin Blunder', 'Transfer'),
            ],
          ),
          ),
          // Vertikal List View
          Expanded(child: ListView(
            children: <Widget> [
              ListviewVerti('https://asset-a.grid.id/crop/0x0:0x0/120x76/photo/2022/08/17/000_9ec6bljpg-20220817031559.jpg', 
              'Nonton Timnas Indonesia VS Curacao di Vidio', 'Bandung Sep 24, 2022'),
              ListviewVerti('https://asset-a.grid.id/crop/0x0:0x0/120x76/photo/2022/08/17/000_9ec6bljpg-20220817031559.jpg', 
              'Marcus Rashford, Kunci Manchester United', 'Manchester Sep 21, 2022'),
              ListviewVerti('https://asset-a.grid.id/crop/0x0:0x0/120x76/photo/2022/08/17/000_9ec6bljpg-20220817031559.jpg', 
              'Luke Shaw Siap Rebut Posisi Bek Kiri Utama MU', 'Manchester Sep 27, 2022'),
              ListviewVerti('https://asset-a.grid.id/crop/0x0:0x0/120x76/photo/2022/08/17/000_9ec6bljpg-20220817031559.jpg', 
              'Illan Meslier Jadi Suksesor Hugo Lloris di Tottenham', 'Tottenham Sep 25, 2022'),
              ListviewVerti('https://asset-a.grid.id/crop/0x0:0x0/120x76/photo/2022/08/17/000_9ec6bljpg-20220817031559.jpg', 
              'Benzema Sudah Pulih dan Sudah Siap Main lagi', 'Madrid Sep 27, 2022'),
            ],
          ),),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
