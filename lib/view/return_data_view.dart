import 'package:flutter/material.dart';

class ReturnDataView extends StatefulWidget{
  @override
  _ReturnDataViewState createState()=> _ReturnDataViewState();
}

class _ReturnDataViewState extends State<ReturnDataView>{
  
  final date = DateTime.now().toUtc();
  
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      
      scrollDirection: Axis.vertical,
      child: Text("Date: ${date}"),
    );
  }
}