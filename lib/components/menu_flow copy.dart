import 'package:flutter/material.dart';


class MenuFlow extends StatelessWidget {
  final Color minhaCorPrimaria = const Color(0xFF2C306F);
  const MenuFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: minhaCorPrimaria,
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.engineering),
            title: Text('OPERATION'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('COMMUNICATION'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_outlined),
            title: Text('SHIFT SUMMARY'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.report_problem_outlined),
            title: Text('REPORT PROBLEM'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.pause_circle_outline),
            title: Text('PAUSE'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.logout),
          //   title: Text('Sair'),
          //   onTap: () {
          //     Navigator.pushAndRemoveUntil(
          //       context,
          //       MaterialPageRoute(builder: (context) => LoginView()),
          //       (Route<dynamic> route) => false,
          //     );  
          //   },
          // ),
        ],
      ),
    );
  }
}
