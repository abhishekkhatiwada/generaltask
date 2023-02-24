import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({
    super.key,
    required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            title: Image.asset(
              'assets/logo/BankLogo.jpg',
              height: 60,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    GradientText(
                      'Welcome, Valued customer',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      colors: const [
                        Color.fromRGBO(17, 108, 67, 1),
                        Color.fromRGBO(20, 126, 184, 1)
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Nov 11, 2022 Thu ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                            color: Color.fromRGBO(20, 123, 161, 1),
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ' 10:01 AM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
      body: widget,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(23, 13, 38, 11),
        color: const Color.fromARGB(255, 255, 255, 255),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo/GentechLogo.png',
              height: 36,
            ),
            const Text(
                'generaltechnology.com | 9512478512 |  © Copyright 2022. All rights reserved.'),
            Image.asset(
              'assets/logo/EliteLogo.png',
              height: 36,
            ),
          ],
        ),
      ),
    );
  }
}
