import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sizer/sizer.dart';
import '../../../constant/colorConstant.dart';
import '../../../constant/stringsConstant.dart';
import '../../../constant/testStyleConstant.dart';
import '../DrawerSE/DrawerSE.dart';

class DashboardSE extends StatefulWidget {
  const DashboardSE({super.key});

  @override
  State<DashboardSE> createState() => _DashboardSEState();
}

class _DashboardSEState extends State<DashboardSE> {
  Map<String, double> dataMap = {};
  int key1 = 0;

  Widget pieChartsOne(context) {
    return PieChart(
      key: ValueKey(key1),
      dataMap: dataMap,
      initialAngleInDegree: 0,
      animationDuration: const Duration(milliseconds: 2000),
      chartType: ChartType.ring,
      chartRadius: 8.h,
      ringStrokeWidth: 10.h,
      colorList: colorList1,
      chartLegendSpacing: 10.h,
      chartValuesOptions: ChartValuesOptions(
          showChartValuesOutside: true,
          // showChartValuesInPercentage: true,
          //showChartValueBackground: true,
          showChartValues: true,
          chartValueStyle: chartValueStyle),
      //centerText: 'Task Status',
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        showLegends: true,
        legendShape: BoxShape.rectangle,
        // legendPosition: LegendPosition.right,
        legendTextStyle: legendTextStyle,
      ),
    );
  }

  List<Color> colorList1 = [
    appThemeColor,
    Colors.orange,
    Colors.blue,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          dashboard,
          style: dashboardStyle,
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15),
        //     child: FlutterSwitch(
        //       width: 20.w,
        //       height: 3.2.h,
        //       valueFontSize: 14,
        //       toggleSize: 20,
        //       value: online_offline_status,
        //       activeColor: Colors.lightGreen,
        //       activeTextColor: Colors.white,
        //       activeTextFontWeight: FontWeight.w400,
        //       activeText: "online",
        //       inactiveText: "offline",
        //       inactiveColor: Colors.grey,
        //       inactiveTextColor: Colors.white,
        //       inactiveTextFontWeight: FontWeight.w400,
        //       borderRadius: 30,
        //       padding: 4,
        //       showOnOff: true,
        //       onToggle: (val) async {
        //         setState(() {
        //           tapButton();
        //         });
        //         await is_update_active_controller()
        //             .is_update_active_controller_method(
        //             online_offline_status);
        //         if (await online_offline_status == true) {
        //           await getLatLong();
        //           Post_current_location_controller()
        //               .Post_current_location_controller_method(
        //               lat, long, address);
        //         }
        //       },
        //     )
        //   ),
        // ],
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        backgroundColor: appThemeColor,
      ),
      drawer: const AppDrawerSE(),
      backgroundColor: appThemeColor,
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              Container(
                height: 28.h,
                width: double.infinity,
                child: Card(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Summary",
                          style: dashboardCardStyle,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(left: 12.w),
                      //   child: pieChartsOne(context),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => BottomNavigationPage(
                  //         BottomIndex: 1, SendTabIndex: 3),
                  //   ),
                  // );
                },
                child: SizedBox(
                  height: 8.h,
                  width: double.infinity,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Completed Work Orders",
                              style: dashboardCardStyle),
                          Text(
                            "lll",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: appThemeColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => BottomNavigationPage(
                  //         BottomIndex: 1, SendTabIndex: 1),
                  //   ),
                  // );
                },
                child: SizedBox(
                  height: 8.h,
                  width: double.infinity,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("OnGoing Work Orders",
                              style: dashboardCardStyle),
                          Text(
                            "lll",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => BottomNavigationPage(
                  //         BottomIndex: 1, SendTabIndex: 2),
                  //   ),
                  // );
                },
                child: SizedBox(
                  height: 8.h,
                  width: double.infinity,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rejected Work Orders",
                              style: dashboardCardStyle),
                          Text(
                            "lll",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => BottomNavigationPage(
                  //         BottomIndex: 1, SendTabIndex: 0),
                  //   ),
                  // );
                },
                child: SizedBox(
                  height: 8.h,
                  width: double.infinity,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Unaccepted Work Orders",
                              style: dashboardCardStyle),
                          Text(
                            "lll",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => PayoutPage(),
                  //   ),
                  // );
                },
                child: SizedBox(
                  height: 8.h,
                  width: double.infinity,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Payouts", style: dashboardCardStyle),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee_sharp,
                                size: 16.sp,
                              ),
                              Text(
                                "lll",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: appThemeColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}