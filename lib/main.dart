import 'package:flutter/material.dart';
import 'package:grocery_ui/data.dart';
import 'package:grocery_ui/item_widget.dart';
import 'package:grocery_ui/components/app_bar_widget.dart';

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
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final data = Product(
    "Bayam",
    "2.000",
    "1ikat",
    "assets/img1.png",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget("Toko Buah & Sayur",
            appBarText: "Toko Buah & Sayur"),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              return ItemWidget(product: allData[index]);
            },
            itemCount: allData.length,
          ),
        ));
  }
}
