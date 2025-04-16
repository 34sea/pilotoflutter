import 'package:flutter/material.dart';
import 'package:pilotoflutter/components/menu_flow.dart';
import 'package:pilotoflutter/components/terminal_flow_app_bar.dart';


class ChecklistView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    final fullHeigth = MediaQuery.of(context).size.height;
    final Color minhaCorPrimaria = const Color(0xFF2C306F);
    return Scaffold(
      appBar: TerminalFlowAppBar(),
      endDrawer: MenuFlow(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: ((fullWidth / 2) - 35),
              decoration: BoxDecoration(
                border: Border.all(
                  color: minhaCorPrimaria,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Text(
                      'Checklist',
                      style: TextStyle(
                          color: minhaCorPrimaria,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: minhaCorPrimaria,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    padding: EdgeInsets.all(16),
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                'No critical',
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Text(
                                          'Question XYZ',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 3,
                                      child: TextButton(
                                        onPressed: () => print("Submit"),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black, width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                        ),
                                        child: Text('Answer'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Text(
                                          'ABASDAS',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 3,
                                      child: TextButton(
                                        onPressed: () => print("Submit"),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black, width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                        ),
                                        child: Text('Answer'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Text(
                                          'IJIDAS',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 3,
                                      child: TextButton(
                                        onPressed: () => print("Submit"),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black, width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                        ),
                                        child: Text('Answer'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                'Critical',
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Text(
                                          'Question XYZ',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 3,
                                      child: TextButton(
                                        onPressed: () => print("Submit"),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black, width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                        ),
                                        child: Text('Answer'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Text(
                                          'ABASDAS',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 3,
                                      child: TextButton(
                                        onPressed: () => print("Submit"),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black, width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                        ),
                                        child: Text('Answer'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: Text(
                                          'IJIDAS',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 3,
                                      child: TextButton(
                                        onPressed: () => print("Submit"),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black, width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                        ),
                                        child: Text('Answer'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () => print("Submit"),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              side: BorderSide(color: Colors.black, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                            ),
                            child: Text('Submit'),
                          )
                        ]),
                  ),

                  // TextButton(
                  //     onPressed: () => {print("Submit")}, child: Text('Submit'))
                ],
              ),
            ),
            Container(
                width: ((fullWidth / 2) - 35),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: minhaCorPrimaria,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Text(
                        'Maintenance Comments',
                        style: TextStyle(
                            color: minhaCorPrimaria,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Maintence can keep comments here about the state of the machine like:',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '"Motor is producing some smoke but not critical"',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '"Engine door hinge will be fixed on next service"',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
