import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:sampleproject/controller/sort.dart';
import 'package:sampleproject/view/components/custom_bar.dart';
import 'package:sampleproject/view/components/first_screen.dart';
import 'package:sampleproject/view/components/second_screen.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SortController());

    return CustomBar(
      widget: GetBuilder<SortController>(builder: (data) {
        var j = data.buttonInfo.length;
        return Column(
          children: [
            Expanded(
              child: Container(
                child: data.firstScreen
                    ? FirstScreen(
                        j: j,
                        bigButton: data.bigButton,
                        buttonInfo: data.buttonInfo)
                    : SecondScreen(j: j, buttonInfo: data.buttonInfo),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    data.firstScreen = true;
                    data.update();
                  },
                  child: const Image(
                    width: 100,
                    image: AssetImage(
                      'assets/icons/Arrow.png',
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          data.firstScreen ? Colors.blueAccent : Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          data.firstScreen ? Colors.grey : Colors.blueAccent,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    data.firstScreen = false;
                    data.update();
                  },
                  child: Transform.rotate(
                    angle: 180 * math.pi / 180,
                    child: const Image(
                      width: 100,
                      image: AssetImage(
                        'assets/icons/Arrow.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
