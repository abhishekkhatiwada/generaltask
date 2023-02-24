import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/constants/hex_color.dart';
import 'package:sampleproject/view/dashboard_page.dart';

import '../Cheque_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
    required this.j,
    required this.bigButton,
    required this.buttonInfo,
  });

  final int j;
  final List<String> bigButton;
  final List buttonInfo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(
          60,
          30,
          60,
          0,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding:
                const EdgeInsets.only(top: 27, bottom: 27, right: 4, left: 4),
            // height: 419,
            width: MediaQuery.of(context).size.width / 2.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(190, 210, 234, 1),
                      Color.fromRGBO(234, 196, 190, 1),
                    ])),
            child: const Image(
              image: AssetImage('assets/images/Bhola.png'),
            ),
          ),
          SizedBox(
            // padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width / 1.9,

            child: Wrap(
              children: [
                for (int i = 0; i < j; i++) ...{
                  (bigButton.contains(buttonInfo[i]['ButtonName']))
                      ? InkWell(
                          onTap: () {
                            Get.to(() => const ChequePage());
                          },
                          child: Buttons(
                              row: true,
                              color: HexColor(buttonInfo[i]['ColorCode']),
                              image: buttonInfo[i]['ButtonIconUrl'],
                              name: buttonInfo[i]['ButtonName']),
                        )
                      : Buttons(
                          color: HexColor(buttonInfo[i]['ColorCode']),
                          image: buttonInfo[i]['ButtonIconUrl'],
                          name: buttonInfo[i]['ButtonName']),
                },
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
