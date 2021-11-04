import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'colors_util.dart';



class UIUtils {
  static void showToast(String toastMessage) {
    Fluttertoast.showToast(msg: toastMessage, toastLength: Toast.LENGTH_LONG);
  }
  static Widget showCircularLoader(String message) {
    return

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                 Container(
                   child: const SpinKitRipple(color: ColorsUtil.primaryColor,),

                 ),

              const SizedBox(height: 20,),
              Center(child: Text(message)),
            ],

        );
  }

  static Widget showLinearLoader(String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 200.0,
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: const LinearProgressIndicator(),
                ),
              ),
              Center(child: Text(message)),
            ],
          ),
        ),
      ],
    );
  }

  static Widget showSimpleLoader() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  static Widget showError(String message) {
    print(message);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
    );
  }

  static Widget showNoContent(String message) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text(
          message,
          style: const TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  static Container buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }

  static String formatDateTime(String dateTime){
    return DateFormat("EEE, MMM d, yyyy | hh:mm").format(DateTime.parse(dateTime).toLocal());
  }

  static num shiftDuration(String startTime, String endTime){
    return DateTime.parse(endTime).difference(DateTime.parse(startTime)).inHours;
  }
}
