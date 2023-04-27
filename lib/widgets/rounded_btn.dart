import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class Roundedbutton extends StatelessWidget {
  final String btn_name;
  final Icon? icon;
  final Color? color;
  final TextStyle? txt_style;
  final VoidCallback? callback;

  Roundedbutton(
      {required this.btn_name,
      this.icon,
      this.color = Colors.blue,
      this.txt_style,
      this.callback});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {
        callback!();
      }),
      child: icon != null
          ? Row(
              children: [
                Spacer(),
                icon!,
                Spacer(),
                Text(
                  btn_name,
                  style: txt_style,
                ),
                Spacer()
              ],
            )
          : Text(
              btn_name,
              style: txt_style,
            ),
      style: ElevatedButton.styleFrom(
          primary: color,
          shadowColor: color,
          shape: RoundedRectangleBorder(
            // borderRadius: BorderRadius.all(Radius.circular(20)),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          )),
    );
  }
}
