import 'package:flutter/material.dart';

class ReturnTable extends StatelessWidget {
  const ReturnTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
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
          /// parchases Row...
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
                        "Return",
                        style: buildTS(20, Colors.white),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        height: 68,
                        child: Column(
                          children: [
                            textInHorizotal(
                                "Invoice Date : ", "01 January 2022"),
                            textInHorizotal("Invoice No. : ", "5386328"),
                          ],
                        )
                        // color: Colors.blueGrey,
                        ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        height: 68,
                        child: Column(
                          children: [
                            textInHorizotal(
                                "Invoice Date : ", "01 January 2022"),
                            textInHorizotal("Invoice No. : ", "5386328"),
                          ],
                        )
                        // color: Colors.blueGrey,
                        ),
                    Container(
                      // padding:
                      //     EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff10AB83))),

                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textInVertical(
                                        "200 pcs x 200", "Test product 01"),
                                  ],
                                ),
                              )),
                          customDivider(),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("৳ 40000",
                                  style: buildTS(12, Colors.black,
                                      FontWeight.w500, "Poppins")),
                            ],
                          )),
                        ],
                      ),
                      // color: Colors.red,
                    ),
                    buildTowItemData(
                        firstItemName: "Discount",
                        firstItemPrice: '0',
                        secoundItemName: "Vat",
                        secoundItemPrice: '0'),
                    buildTowItemData(
                        firstItemName: "Grand Total",
                        firstItemPrice: '5000',
                        secoundItemName: "Previous Due",
                        secoundItemPrice: '20000'),
                    buildTowItemData(
                        firstItemName: "Total Amount",
                        firstItemPrice: '15000',
                        secoundItemName: "Total Paid",
                        secoundItemPrice: '0'),
                    Container(
                      // padding:
                      //     EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      height: 46,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff10AB83))),

                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Remaining Balance",
                                      style: buildTS(
                                          12, Colors.black, FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )),
                          customDivider(),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("৳ 15000",
                                  style: buildTS(12, Colors.black,
                                      FontWeight.w500, "Poppins")),
                            ],
                          )),
                        ],
                      ),
                      // color: Colors.red,
                    ),
                  ],
                )),

            //Due price column
            Container(
              padding: EdgeInsets.all(10),
              width: 78,
              height: 486,
              // color: Colors.cyan,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Text("Due",
                      style:
                          buildTS(12, Colors.black, FontWeight.w500, "Inter")),
                  Text("৳ 15000",
                      style: buildTS(
                          12, Color(0xffF37048), FontWeight.w600, "Inter"))
                ],
              ),
            )
          ]),
        ]);
  }

  Container buildTowItemData({
    required String firstItemName,
    required String firstItemPrice,
    required String secoundItemName,
    required String secoundItemPrice,
  }) {
    return Container(
      // padding:
      //     EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: 64,
      decoration: BoxDecoration(border: Border.all(color: Color(0xff10AB83))),

      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstItemName,
                      style: buildTS(12, Colors.black, FontWeight.w600),
                    ),
                    Text(
                      secoundItemName,
                      style: buildTS(12, Colors.black, FontWeight.w600),
                    ),
                  ],
                ),
              )),
          customDivider(),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("৳ ${firstItemPrice}",
                  style: buildTS(12, Colors.black, FontWeight.w500, "Poppins")),
              Text("৳ ${secoundItemPrice}",
                  style: buildTS(12, Colors.black, FontWeight.w500, "Poppins")),
            ],
          )),
        ],
      ),
      // color: Colors.red,
    );
  }

  Container customDivider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: double.infinity,
      width: 1,
      color: Color(0xff10AB83),
    );
  }

  Row textInHorizotal(
    String firstStr,
    String SecondStr,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstStr,
          style: buildTS(14, Colors.black, FontWeight.w400),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          SecondStr,
          style: buildTS(
            12,
            Colors.black,
          ),
        ),
      ],
    );
  }

  TextStyle buildTS(double fs, [Color? clr, FontWeight? fw, String? fF]) {
    return TextStyle(
        fontSize: fs,
        fontWeight: fw == null ? FontWeight.w600 : fw,
        fontFamily: fF == null ? "Poppins" : "Inter",
        color: clr == null ? Color(0xff10AB83) : clr);
  }

  Column textInVertical(
    String firstStr,
    String SecondStr,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          SecondStr,
          style: buildTS(12, Colors.black, FontWeight.w600),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          firstStr,
          style: buildTS(12, Colors.black, FontWeight.w400),
        ),
      ],
    );
  }
}
