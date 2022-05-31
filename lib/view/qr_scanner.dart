import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class qrScanner extends StatefulWidget {
  const qrScanner({Key? key}) : super(key: key);

  @override
  State<qrScanner> createState() => _qrScannerState();
}

class _qrScannerState extends State<qrScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR SCANNER TEST'),
      ),
      body: MobileScanner(
        allowDuplicates: false,
        controller: MobileScannerController(
            facing: CameraFacing.back, torchEnabled: true),
        onDetect: (qrcode, args) {
          if (qrcode.rawValue == null) {
            print('QR스캔 실패');
          } else {
            final String code = qrcode.rawValue!;
            print('QR스캔 성공 $code');
            Navigator.pop(context, code);
          }
        },
      ),
    );
  }
}
