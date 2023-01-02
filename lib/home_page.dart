import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      drawerScrimColor: Color(0xff10AB83).withOpacity(0.5),
      drawer: Drawer(
        backgroundColor: Colors.redAccent,
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            _key.currentState!.openDrawer();
          },
          child: Container(
              width: 16,
              height: 14,
              child: Image.asset(
                "images/menu.png",
              )),
        ),
        backgroundColor: Color(0xff10AB83),
        elevation: 0,
        title: Text(
          "Table Data",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Inter"),
        ),
        centerTitle: true,
      ),
    );
  }
}
