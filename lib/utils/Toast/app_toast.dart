import 'package:flutter/material.dart';

class ToastMessage {
  void toast(
      {required BuildContext context,
      required String message,
      required Color messageColor,
      required Color background,
      int duration = 3000}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(milliseconds: duration),
      behavior: SnackBarBehavior.floating,
      backgroundColor: background,
      content: Text(
        message,
        style: TextStyle(
            color: messageColor, fontSize: 15, fontWeight: FontWeight.w400),
      ),
    ));
  }

  void AlertMessage(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) => WillPopScope(
            child: AlertDialog(
                elevation: 100,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                backgroundColor: Colors.yellow.withOpacity(0.5),
                contentPadding: EdgeInsets.zero,
                insetPadding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 120),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                content: Builder(
                  builder: (context) {
                    return Container(
                        padding: const EdgeInsets.all(5),
                        width: 300,
                        height: 100,
                        child: const Text(
                          "This feature is currently not available..",
                        ));
                  },
                )),
            onWillPop: () async {
              return false;
            }));
  }
}
