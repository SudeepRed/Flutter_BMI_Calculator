import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconOverlay extends StatelessWidget {
  IconOverlay({this.icon, this.gender});

  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          gender,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 20.0,
              color: Color(0xFF8D8E98),
            ),
          ),
        ),
      ],
    );
  }
}

class BoxContainerWidget extends StatelessWidget {
  BoxContainerWidget({@required this.c, this.child, this.onTap});
  final Color c;
  final Widget child;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: c,
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
  /*GestureDetector(

  }*/
}
