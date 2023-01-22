import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../kebutuhan/colors.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 100,
                  bottom: 1,
                  child: SizedBox(
                      width: width,
                      child: CircleAvatar(
                        backgroundColor: orange500,
                        radius: 300,
                      )),
                ),
                Positioned(
                    left: 200,
                    bottom: 50,
                    child: SizedBox(
                      width: width,
                      child: CircleAvatar(
                        radius: 180,
                        backgroundColor: orange300,
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Login Account',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/icon/person.svg')
                        ],
                      ),
                      const Text(
                        'Selamat datang Sidiq Toha',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/title/title.svg'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                label: Text('Masukan Email'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                label: Text('Masukan Password'),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5, bottom: 10),
              width: width / 1.2,
              child: Text('Lupa Password',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.w500))),
          Container(
            margin: const EdgeInsets.only(bottom: 30, top: 10),
            alignment: Alignment.center,
            width: width / 1.3,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: orange),
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            '___________________Or sign up with_________________',
            style: TextStyle(fontSize: 13),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: myList
                .map((e) => Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: SizedBox(
                            height: 25,
                            width: 25,
                            child: SvgPicture.asset(
                              e['image'],
                              width: 20,
                            )),
                      ),
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Belum punya akun ?'),
              Text('Buat Akun', style: TextStyle(fontWeight: FontWeight.w600))
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> myList = [
  {'image': 'assets/icon/google.svg'},
  {'image': 'assets/icon/fb.svg'},
  {'image': 'assets/icon/apple.svg'},
];
