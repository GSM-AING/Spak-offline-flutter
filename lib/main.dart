import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPAK-관리자용',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SPAK'),
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
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Center(
          child: Row(children: [
        Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.fromLTRB(29, 16, 34, 0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      const Text('SPAK',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SvgPicture.asset('assets/images/global.svg',
                          width: 30, height: 30)
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  )),
            )),
        Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFF00FFA3))
      ])),
    );
  }
}
