import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_scan_kp/model/paper_details.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'app_dialog_box.dart';

class QRViewPage extends StatefulWidget {
  final int jenisScan;
  QRViewPage({this.jenisScan});

  @override
  _QRViewPageState createState() => _QRViewPageState();
}

class _QRViewPageState extends State<QRViewPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  var qrText = "";

  QRViewController controller;

  showDialogBox() {
    showDialog(
        context: context,
        builder: (context) {
          return AppDialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return QRView(
      overlay: QrScannerOverlayShape(
        borderColor: Colors.white,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: 300,
      ),
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      if (scanData != null) {
        final data = await jsonDecode(scanData.toString());
        PaperDetails p = PaperDetails.fromJson(data[0]);
        print(p.tingkatan);
        showDialogBox();
      } else {
        print('null');
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
