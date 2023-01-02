import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawerScrimColor: Color(0xff10AB83).withOpacity(0.5),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Stack(children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff10AB83),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              margin: EdgeInsets.all(8),
                              child: Image.asset("images/close.png")),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            "Demo Limited Company",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -180,
                    top: -140,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(120)),
                          gradient: LinearGradient(colors: [
                            Color(0xffC9ECE3).withOpacity(0.15),
                            Color(0xff10AB83).withOpacity(0.15)
                          ])),
                    ),
                  ),
                  Positioned(
                    right: -220,
                    top: -140,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(120)),
                          gradient: LinearGradient(colors: [
                            Color(0xffC9ECE3).withOpacity(0.15),
                            Color(0xff10AB83).withOpacity(0.15)
                          ])),
                    ),
                  )
                ]),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                  ))
            ],
          ),
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
      ),
    );
  }
}
