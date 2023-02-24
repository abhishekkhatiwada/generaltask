import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SortController extends GetxController {
  static SortController to = Get.find();

  bool firstScreen = true;

  List<String> bigButton = [
    "Account Info",
    "Cheque Requisition",
  ];

  Widget? screen;
  @override
  void onReady() {
    sortResult();
    super.onReady();
  }

  List buttonInfo = [
    {
      "Id": 10,
      "ButtonName": "Cheque Deposit",
      "ColorCode": "#EEFFF7",
      "ButtonIconUrl": "assets/icons/chequeDeposit.png",
      "ButtonUrl": "/ChequeDeposit",
      "Count": 1045,
      "AppBarTitle": "chequeDeposit",
      "IsEnabled": true,
      "KioskId": "1",
      "KioskMachine": null,
      "ButtonEnglish": "Englisgh",
      "ButtonNepali": "चेक जम्मा",
      "IsNative": true
    },
    {
      "Id": 1004,
      "ButtonName": "Account Opening",
      "ColorCode": "#FFFDF2",
      "ButtonIconUrl": "assets/icons/bpm.png",
      "ButtonUrl": "http://192.168.101.27:8055/",
      "Count": 678,
      "AppBarTitle": "App",
      "IsEnabled": true,
      "KioskId": "1",
      "KioskMachine": null,
      "ButtonEnglish": "Account Opening",
      "ButtonNepali": "खाता खोल्ने",
      "IsNative": false
    },
    {
      "Id": 9,
      "ButtonName": "Account Statement",
      "ColorCode": "#EAFCFF",
      "ButtonIconUrl": "assets/icons/accountStatement.png",
      "ButtonUrl": "/AccountStatement",
      "Count": 409,
      "AppBarTitle": "accountStatement",
      "IsEnabled": true,
      "KioskId": "1",
      "KioskMachine": null,
      "ButtonEnglish": "Eng",
      "ButtonNepali": "खाताको विवरण",
      "IsNative": true
    },
    {
      "Id": 12,
      "ButtonName": "Cheque Requisition",
      "ColorCode": "#C2AEFC",
      "ButtonIconUrl": "assets/icons/chequereq.png",
      "ButtonUrl": "/ChequeRequisition",
      "Count": 234,
      "AppBarTitle": "Cheque Requisition",
      "IsEnabled": true,
      "KioskId": "1",
      "KioskMachine": null,
      "ButtonEnglish": "Eng",
      "ButtonNepali": "चेक अनुरोध",
      "IsNative": true
    },
    {
      "Id": 13,
      "ButtonName": "Cheque Stop",
      "ColorCode": "#FFF2F5",
      "ButtonIconUrl": "assets/icons/chequeStop.png",
      "ButtonUrl": "/ChequeStop",
      "Count": 222,
      "AppBarTitle": "chequeStop",
      "IsEnabled": true,
      "KioskId": "1",
      "KioskMachine": null,
      "ButtonEnglish": "Enghj",
      "ButtonNepali": "चेक रोक्का",
      "IsNative": true
    },
    {
      "Id": 1,
      "ButtonName": "Account Info",
      "ColorCode": "#F2FFFF",
      "ButtonIconUrl": "assets/icons/accInfo&BlncInq.png",
      "ButtonUrl": "/AccountInformation",
      "Count": 195,
      "AppBarTitle": "asdfgh",
      "IsEnabled": true,
      "KioskId": "1",
      "KioskMachine": null,
      "ButtonEnglish": "English",
      "ButtonNepali": "खाताको जानकारी",
      "IsNative": true
    },
    {
      "Id": 14,
      "ButtonName": "Mini Statement",
      "ColorCode": "#FFF0E5",
      "ButtonIconUrl": "assets/icons/miniStatement.png",
      "ButtonUrl": "/MiniStatement",
      "Count": 169,
      "AppBarTitle": "miniStatement",
      "IsEnabled": true,
      "KioskId": "1",
      "KioskMachine": null,
      "ButtonEnglish": "Eng",
      "ButtonNepali": "संक्षिप्त विवरण",
      "IsNative": true
    }
  ];

  changeScrenn() {
    firstScreen = false;

    update();
  }

  sortResult() {
    buttonInfo.sort((a, b) => (b['Count']).compareTo(a['Count']));
    update();
  }
}
