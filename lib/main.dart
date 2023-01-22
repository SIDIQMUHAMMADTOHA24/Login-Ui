import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_shop/kebutuhan/colors.dart';
import 'package:mini_shop/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Stack(children: [
            Stack(
              children: [
                Positioned(
                  right: 100,
                  bottom: 180,
                  child: SizedBox(
                      width: width,
                      child: CircleAvatar(
                        backgroundColor: orange500,
                        radius: 300,
                      )),
                ),
                Positioned(
                    left: 200,
                    bottom: 280,
                    child: SizedBox(
                      width: width,
                      child: CircleAvatar(
                        radius: 180,
                        backgroundColor: orange300,
                      ),
                    )),
              ],
            ),
            Center(
              child: SvgPicture.asset(
                'assets/image/hero.svg',
                width: width / 1.5,
              ),
            ),
          ]),
        ),
        const Text(
          'Explore the app',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Hanya disini kekurangan anda terpenuhi',
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 70, top: 30),
          alignment: Alignment.center,
          width: width / 1.3,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: orange),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginRegister(),
              ));
            },
            child: const Text(
              'Mulai',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}
