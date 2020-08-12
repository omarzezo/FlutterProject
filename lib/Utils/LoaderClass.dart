import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader{
  bool isDialogShowing = false;

  void showAppLoading(BuildContext context, {String msg}) {

    final spinkit =
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align (
          alignment: Alignment.center,
          child:     SpinKitWave(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.black87 : Colors.blueAccent,
                ),
              );
            },
          ),
        ),
      ],
    );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Material(
        type: MaterialType.transparency,
        child: Center(
          // Aligns the container to center
          child:
          spinkit ,
//        Container(
//          // A simplified version of dialog.
//          width: 100.0,
//          height: 56.0,
//          color: Colors.green,
//          child: Text('jojo'),
//        ),
        ),
      ),
    );

    isDialogShowing = true;
  }

  void hideAppDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
    isDialogShowing = false;
  }

}