import 'package:flutter/material.dart';
import 'package:sampleproject/constants/hex_color.dart';
import 'package:sampleproject/view/components/buttons.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
    required this.j,
    required this.buttonInfo,
  });

  final int j;

  final List buttonInfo;

  @override
  Widget build(BuildContext context) {
    List<String> bigButton = [
      "Account Info",
    ];
    return Container(
      margin: const EdgeInsets.only(top: 45, left: 60, right: 60),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              Wrap(
                children: [
                  for (int i = 0; i < j; i++) ...{
                    (bigButton.contains(buttonInfo[i]['ButtonName']))
                        ? Buttons(
                            row: true,
                            color: HexColor(buttonInfo[i]['ColorCode']),
                            image: buttonInfo[i]['ButtonIconUrl'],
                            name: buttonInfo[i]['ButtonName'])
                        : Buttons(
                            color: HexColor(buttonInfo[i]['ColorCode']),
                            image: buttonInfo[i]['ButtonIconUrl'],
                            name: buttonInfo[i]['ButtonName']),
                  }
                ],
              ),
              Wrap(
                children: [
                  for (int i = 0; i < 4; i++) ...{
                    (bigButton.contains(buttonInfo[i]['ButtonName']))
                        ? Buttons(
                            row: true,
                            color: HexColor(buttonInfo[i]['ColorCode']),
                            image: buttonInfo[i]['ButtonIconUrl'],
                            name: buttonInfo[i]['ButtonName'])
                        : Buttons(
                            color: HexColor(buttonInfo[i]['ColorCode']),
                            image: buttonInfo[i]['ButtonIconUrl'],
                            name: buttonInfo[i]['ButtonName']),
                  },
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
