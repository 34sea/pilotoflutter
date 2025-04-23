import 'package:flutter/material.dart';

class TerminalFlowAppBar extends AppBar {
  @override
  final Size preferredSize;

  TerminalFlowAppBar({super.key})
      :  preferredSize = Size.fromHeight(60), super(
            backgroundColor: Color(0xFFF4F8FC),
            leadingWidth: 180,
            leading: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                
              ),
              child: Image.asset("assets/images/logo/newlogo.png", fit: BoxFit.contain),
            ),
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E2E76)),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Equipment ID:",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E2E76)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "4550",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E2E76)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Operator:",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E2E76)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E2E76)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ));
}
