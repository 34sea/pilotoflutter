import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pilotoflutter/utils/getIso_dates.dart';

class DialogView extends StatefulWidget {
  @override
  _DialogViewState createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> {
  bool alertD =false;
  void alertDiolog() {
    setState(() {
      
    });
  }

  var data = GetisoDates().getIsoDates()[0];
  // if(alertD){
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text("Título do Diálogo"),
  //           content: Text("Esta é a mensagem do diálogo."),
  //           actions: [
  //             TextButton(
  //               child: Text("Cancelar"),
  //               onPressed: () {
  //                 Navigator.of(context).pop(); 
  //               },
  //             ),
  //             ElevatedButton(
  //               child: Text("OK"),
  //               onPressed: () {
                  
  //                 Navigator.of(context).pop(); 
  //               },
  //             ),
  //           ],
  //         );
  //       },
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog")),
      body: Center(
        child: Column(
          children: [
            Text(
              "Reach Stacker ${data}",
              style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text("AlertDialog"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text("SimpleDialog"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text("Personalizado"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
