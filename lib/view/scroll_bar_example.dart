import 'package:flutter/material.dart';
import 'package:pilotoflutter/services/global_data.dart';
import 'package:pilotoflutter/view/details_items_view.dart';
import 'package:provider/provider.dart';

class ScrollbarExample extends StatelessWidget {
  
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll com cor")),
      body: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true, 
        thickness: 8, 
        radius: Radius.circular(10), 
        scrollbarOrientation: ScrollbarOrientation.right,
        interactive: true,
        trackVisibility: true,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 50,
          itemBuilder: (context, index) => ListTile(
            title: GestureDetector(
              onDoubleTap: () => {
                GlobalData.instance.id = index,
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsItemsView()))
              },
              child: Text("Item $index"),
            ),
          ),
        ),
      ),
    );
  }
}