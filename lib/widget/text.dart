import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class algeriya_text extends StatelessWidget {
  algeriya_text({
    this.fontsize = 30.0,
    required this.containt,
    this.fontcolor = Colors.white,
    Key? key}) : super(key: key);

  double? fontsize;
  final String containt;
  Color? fontcolor;

  @override
  Widget build(BuildContext context) {
    return Text(containt,
    style: GoogleFonts.alegreya(
       color: fontcolor,
       fontSize:fontsize,
    ),
    );
  }
}



class cario_text extends StatelessWidget {
  cario_text({
    this.fontsize = 20.0,
    required this.containt,
    this.fontcolor = Colors.white,
    Key? key}) : super(key: key);

  double? fontsize;
  final String containt;
  Color? fontcolor;

  @override
  Widget build(BuildContext context) {
    return Text(containt,
      style: GoogleFonts.cairo(
        color: fontcolor,
        fontSize:fontsize,
      ),
    );
  }
}
