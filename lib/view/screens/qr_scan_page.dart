import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:my_scan_kp/view/share_widgets/app_qr_view.dart';

class QrScanPage extends StatefulWidget {
  final int index;
  QrScanPage({this.index});

  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage>
    with SingleTickerProviderStateMixin {
  List<String> appBarTitle = [
    'Penyediaan Kertas',
    'Penyerahan Kertas',
    'Kutipan Kertas',
    'Penandaan Kertas',
  ];

  List<Tab> tabBar = [
    Tab(text: 'Penyediaan'),
    Tab(text: 'Penyerahan'),
    Tab(text: 'Kutipan'),
    Tab(text: 'Penandaan'),
  ];

  int tabIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: tabBar.length,
      initialIndex: widget.index,
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.index);
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Expanded(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: AppColors.whiteColor,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: tabBar,
                isScrollable: true,
              ),
              title: Text(
                appBarTitle[widget.index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              backgroundColor: AppColors.primaryColor,
            ),
            body: TabBarView(children: [
              QRViewPage(),
              QRViewPage(),
              QRViewPage(),
              QRViewPage(),
            ])),
      ),
    );
  }
}
