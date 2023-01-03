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
                            _key.currentState!.closeDrawer();
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
                    child: Column(
                      children: [
                        ExpansionTile(
                          // childrenPadding: EdgeInsets.all(12),
                          backgroundColor: Color(0xffC9ECE3),
                          collapsedTextColor: Colors.black,
                          iconColor: Color(0xff10AB83),
                          textColor: Color(0xff10AB83),
                          expandedCrossAxisAlignment: CrossAxisAlignment.start,
                          leading: IconButton(
                              onPressed: (() {}),
                              icon: Icon(
                                Icons.shopping_cart_rounded,
                                size: 16,
                              )),
                          title: Text(
                            'Purchase',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          children: [
                            IntrinsicHeight(
                              child: Container(
                                padding: EdgeInsets.all(16),
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffC9ECE3),
                                      width: 10,
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                      width: 46,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Purchase List",
                                          style: buildTSForExpansion(12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "Purchase List",
                                          style: buildTSForExpansion(12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "Order List",
                                          style: buildTSForExpansion(12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "VAT List",
                                          style: buildTSForExpansion(12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text("Product Unit",
                                            style: buildTSForExpansion(12)),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text("Purchese Report",
                                            style: buildTSForExpansion(12)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          backgroundColor: Color(0xffC9ECE3),
                          collapsedTextColor: Colors.black,
                          iconColor: Color(0xff10AB83),
                          textColor: Color(0xff10AB83),
                          leading: IconButton(
                              onPressed: (() {}),
                              icon: Icon(
                                Icons.shopping_bag_rounded,
                                size: 16,
                              )),
                          title: Text(
                            'Sell',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        ExpansionTile(
                          backgroundColor: Color(0xffC9ECE3),
                          collapsedTextColor: Colors.black,
                          iconColor: Color(0xff10AB83),
                          textColor: Color(0xff10AB83),
                          leading: IconButton(
                              onPressed: (() {}),
                              icon: Image.asset('images/stock.png')),
                          title: Text(
                            'Stock / Inventory',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: SizedBox(
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
        body: BodyTable(),
      ),
    );
  }

  TextStyle buildTSForExpansion(double fs) {
    return TextStyle(
        fontSize: fs,
        fontWeight: FontWeight.w500,
        fontFamily: "Poppins",
        color: Color(0xff10AB83));
  }
}

class BodyTable extends StatelessWidget {
  const BodyTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Table(
          border: TableBorder.all(
              width: 2,
              color: Color(0xff10AB83),
              borderRadius: BorderRadius.circular(4)),
          columnWidths: <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(flex: 2),
            // 0: FlexColumnWidth(2),
            1: FlexColumnWidth(),
            // 2: FixedColumnWidth(10),
          },
          children: [
            TableRow(children: [
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(4)),
                          color: Color(0xff10AB83),
                        ),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                        child: Text(
                          "Dues",
                          style: buildTS(20, Colors.white),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        height: 40,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Previous Due",
                              style: buildTS(14, Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "01 January 2022",
                              style: buildTS(12, Colors.black, FontWeight.w400),
                            )
                          ],
                        ),
                        // color: Colors.blueGrey,
                      )
                    ],
                  )),
              Container(
                width: 78,
                height: 80,
                // color: Colors.cyan,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text("Due",
                        style: buildTS(
                            12, Colors.black, FontWeight.w500, "Inter")),
                    Text("৳ 20000",
                        style: buildTS(
                            12, Color(0xffF37048), FontWeight.w600, "Inter"))
                  ],
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(4)),
                          color: Color(0xff10AB83),
                        ),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                        child: Text(
                          "Purchase",
                          style: buildTS(20, Colors.white),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        height: 40,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Previous Due",
                              style: buildTS(14, Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "01 January 2022",
                              style: buildTS(12, Colors.black, FontWeight.w400),
                            )
                          ],
                        ),
                        // color: Colors.blueGrey,
                      )
                    ],
                  )),
              Container(
                width: 78,
                height: 490,
                // color: Colors.cyan,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text("Due",
                        style: buildTS(
                            12, Colors.black, FontWeight.w500, "Inter")),
                    Text("৳ 30000",
                        style: buildTS(
                            12, Color(0xffF37048), FontWeight.w600, "Inter"))
                  ],
                ),
              )
            ])
          ]),
    );
  }

  TextStyle buildTS(double fs, [Color? clr, FontWeight? fw, String? fF]) {
    return TextStyle(
        fontSize: fs,
        fontWeight: fw == null ? FontWeight.w600 : fw,
        fontFamily: fF == null ? "Poppins" : "Inter",
        color: clr == null ? Color(0xff10AB83) : clr);
  }
}
