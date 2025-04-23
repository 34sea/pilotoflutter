import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomMenuComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFF4F8FC)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF77F00),
                      foregroundColor: Color(0xFFF5F9FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                    ),
                    child: const Text('Pause', style: TextStyle(fontSize: 16)),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD62828),
                      foregroundColor: Color(0xFFF5F9FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                    ),
                    child:
                        const Text('Cancelar', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.list, color: Color(0xFF2E2E76), size: 40),
                  onPressed: () {
                    print("Lista");
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  icon: Icon(Icons.phone, color: Color(0xFF2E2E76), size: 40),
                  onPressed: () {
                    print("Celular");
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  icon: Icon(Icons.insert_chart_outlined, color: Color(0xFF2E2E76), size: 40),
                  onPressed: () {
                    print("List");
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  icon: Icon(Icons.warning_amber_outlined, color: Color(0xFF2E2E76), size: 40,),
                  onPressed: () {
                    print("Aviso");
                  },
                ),
                SizedBox(
                  width: 50,
                ),

                IconButton(
                  icon: Icon(Icons.logout, color: Color(0xFF2E2E76), size: 40),
                  onPressed: () {
                    print("Logout");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
