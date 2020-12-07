import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:my_scan_kp/utils/app_data.dart';
import 'package:my_scan_kp/view/share_widgets/app_qr_view.dart';

class QrScanPage extends StatefulWidget {
  final int index;
  QrScanPage({this.index});

  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage>
    with SingleTickerProviderStateMixin {
  int tabIndex = 0;
  TabController _tabController;
  String currentTitle;

  @override
  void initState() {
    currentTitle = AppData.title[widget.index];
    _tabController = new TabController(
      vsync: this,
      length: AppData.tabBar.length,
      initialIndex: widget.index,
    );
    _tabController.addListener(changeTitle);
    super.initState();
  }

  void changeTitle() {
    setState(() {
      currentTitle = AppData.title[_tabController.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Expanded(
      child: DefaultTabController(
        length: 4,
        initialIndex: widget.index,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: AppColors.whiteColor,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: AppData.tabBar,
                isScrollable: true,
              ),
              title: Text(
                currentTitle,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              backgroundColor: AppColors.primaryColor,
            ),
            body: TabBarView(children: [
              QRViewPage(), // penyediaan
              QRViewPage(), // penyerahan
              QRViewPage(), // penandaan
              QRViewPage(), // kutipan
            ])),
      ),
    );
  }
}
