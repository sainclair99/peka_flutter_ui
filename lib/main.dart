import 'package:flutter/material.dart';

import 'models/card_item.dart';
import 'widgets/card_custom_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
      body: Container(
        color: Colors.blueAccent.withOpacity(0.2),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 25,
                      color: Color(0xff6C8494),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Emana Fokou ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6C8494),
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 2,
                      color: const Color(0xff6C8494),
                    ),
                    const Text(
                      " Mvan",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6C8494),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(10),
                itemCount: datas.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 12);
                },
                itemBuilder: (context, index) {
                  var item = datas[index];
                  return CardCustomWidget(item: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var datas = [
  CardItem(
    date: "Aujourd'hui",
    prix: "500 XFA",
    heureDebut: "09h30",
    heureFin: "16h30",
    imageUrl: "assets/images/photo1.jpg",
    name: "Peka Dassi Scott",
    fname: "Emana Fokou",
    lname: "Mvan",
    ratio: '3/4',
    preference: 'j\'aime conduire avec la musique',
    agenceName: "agence Tresor",
  ),
  CardItem(
    date: "25/04/2024",
    prix: "300 XFA",
    heureDebut: "08h20",
    heureFin: "11h30",
    imageUrl: "assets/images/photo2.jpg",
    name: "Neil Bali Jones",
    fname: "Lara Scarlet",
    lname: "Swat",
    ratio: '3/2',
    preference: 'j\'aime conduire avec la musique',
    agenceName: "agence Tresor",
  ),
  CardItem(
    date: "19/04/2024",
    prix: "600 XFA",
    heureDebut: "10h30",
    heureFin: "17h45",
    imageUrl: "assets/images/photo3.jpg",
    name: "Gorgie Dalas Scott",
    fname: "Sara Lafouet",
    lname: "Dozen",
    ratio: '2/9',
    preference: 'j\'aime conduire avec la musique',
    agenceName: "agence Tresor",
  ),
  CardItem(
    date: "Aujourd'hui",
    prix: "425 XFA",
    heureDebut: "09h30",
    heureFin: "13h30",
    imageUrl: "assets/images/photo.jpg",
    name: "Alain Sainclair Scott",
    fname: "Emana Fokou",
    lname: "Dozen",
    ratio: '6/7',
    preference: 'j\'aime conduire avec la musique',
    agenceName: "agence Tresor",
  ),
];
