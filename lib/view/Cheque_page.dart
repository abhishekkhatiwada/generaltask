import 'package:flutter/material.dart';
import 'package:sampleproject/view/components/custom_bar.dart';

import '../keyboard/vk.dart';

class ChequePage extends StatefulWidget {
  const ChequePage({
    Key? key,
  }) : super(key: key);

  @override
  _ChequePageState createState() => _ChequePageState();
}

class _ChequePageState extends State<ChequePage> {
  // Holds the text that user typed.
  String text = '';

  // True if shift enabled.
  bool shiftEnabled = false;

  // is true will show the numeric keyboard.
  bool isNumericMode = false;

  late TextEditingController _controllerText;

  @override
  void initState() {
    _controllerText = TextEditingController();

    super.initState();
  }

  bool keyboard = false;
  bool nextBtn = false;
  @override
  Widget build(BuildContext context) {
    return CustomBar(
      widget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                Form(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _controllerText,
                          autofocus: false,
                          onTap: () {
                            keyboard = !keyboard;
                            setState(() {});
                          },
                          onChanged: (v) {
                            if (v.length == 16) {
                              keyboard = !keyboard;
                              nextBtn = true;
                              setState(() {});
                            }
                          },
                          maxLength: 16,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Your text',
                          ),
                        ),
                      ),
                      nextBtn
                          ? Expanded(
                              flex: 1,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text('Next'),
                              ),
                            )
                          : Expanded(
                              flex: 0,
                              child: Container(),
                            ),
                    ],
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (keyboard == true) {
                        keyboard = !keyboard;
                        setState(() {});
                      }
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: double.maxFinite,
                    ),
                  ),
                ),
                (keyboard)
                    ? VirtualKeyboard(
                        height: MediaQuery.of(context).size.width / 2.8,
                        type: VirtualKeyboardType.Alphanumeric,
                        textController: _controllerText)
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
