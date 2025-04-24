import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogView extends StatefulWidget{
  @override
 _DialogViewState createState()=> _DialogViewState();
}

class _DialogViewState extends State<DialogView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Column(children: [
          Text("Reach Stacker", style: GoogleFonts.lato(
          fontSize: 14,
          color: Colors.black
        ), )
        ],),
      ),
    );
  }
}