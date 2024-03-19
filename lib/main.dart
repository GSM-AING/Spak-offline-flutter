import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(29, 16, 34, 0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('SPAK',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SvgPicture.asset('assets/images/global.svg',
                            width: 30, height: 30)
                      ],
                    )),
              ),
              SizedBox(
                height: 270,
              ),
              const Text(
                'Around',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 64),
              ),
              Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF00FFA3)),
                    color: const Color(0xFF00FFA3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/group.svg',
                        width: 25, height: 25),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '6팀 입장 완료',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ],
                ),
              )
            ])),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFF00FFA3),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(60, 90, 0, 0),
                      child: Text(
                        'QR코드를 이용하여,\n예매 여부에 따라 입장 해주세요',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PretendardBlack',
                            height: 1.2),
                      ))),
              SizedBox(height: 100),
              Image.asset(
                'assets/images/qra.png',
                height: 400,
                width: 400,
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('인식이 안되시나요?',
                    style:
                        TextStyle(fontFamily: 'PretendardBold', fontSize: 15)),
                SizedBox(width: 10),
                SvgPicture.asset('assets/images/arrow.svg',
                    width: 10, height: 10)
              ])
            ],
          ),
        ),
      ])),
    );
  }
}
