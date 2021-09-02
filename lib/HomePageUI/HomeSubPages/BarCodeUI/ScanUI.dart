import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../HomeProvider.dart';


class ScanUI extends StatefulWidget {
  const ScanUI({Key? key}) : super(key: key);

  @override
  _ScanUIState createState() => _ScanUIState();
}

class _ScanUIState extends State<ScanUI> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void dispose() async{
    super.dispose();
    controller?.dispose();
  }

  @override
  void reassemble() async{
    super.reassemble();
   await controller!.pauseCamera();
}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
        child: Stack(
          children: [
            QRView(
              overlay: QrScannerOverlayShape(
                borderRadius: 10,
                borderLength: 131,
                borderWidth: 6.0,
                borderColor: Colors.white,
              ),
            onQRViewCreated: _onQRViewCreated,
            key: qrKey,
    ),
            Positioned(
              bottom: 0.0,
                child: Container(
                  width: size.width,
                   // color: Colors.red,
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: MaterialButton(
                      onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: 8.0),
                              child: CUIcon(Icons.image, Colors.white),
                            ),
                            CUText("Add code from gallery",TextAlign.start, 16,
                            true, Colors.white),
                          ],
                        )))),
          ],
        )),
    );
  }

  void _onQRViewCreated(controller) {
    controller = controller;
    controller.scannedDataStream.listen((scanData) {
      var result = scanData;
    });
  }
}


