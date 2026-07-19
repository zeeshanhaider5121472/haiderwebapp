// import 'dart:io';
// import 'dart:typed_data';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:share_plus/share_plus.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'QR Code Generator',
//       home: QRCodeScreen(),
//     );
//   }
// }

// class QRCodeScreen extends StatefulWidget {
//   @override
//   _QRCodeScreenState createState() => _QRCodeScreenState();
// }

// class _QRCodeScreenState extends State<QRCodeScreen> {
//   final String _url = 'https://www.example.com';

//   Future<void> shareQrCode(String url) async {
//     final file = await generateQrCode(url);
//     if (file != null) {
//       await Share.shareFiles([file.path], mimeTypes: ['image/jpg']);
//     }
//   }

//   Future<File?> generateQrCode(String dataToGenerate) async {
//     final qrValidationResult = QrValidator.validate(
//       data: dataToGenerate,
//       version: QrVersions.auto,
//       errorCorrectionLevel: QrErrorCorrectLevel.L,
//     );

//     final ByteData assetImageByteData =
//         await rootBundle.load('assets/images/logo.png');
//     final codec = await instantiateImageCodec(
//       assetImageByteData.buffer.asUint8List(),
//       targetHeight: 1000,
//       targetWidth: 1000,
//     );
//     final image = (await codec.getNextFrame()).image;

//     if (qrValidationResult.isValid) {
//       final QrCode? qrCode = qrValidationResult.qrCode;
//       final QrPainter qrPainter = QrPainter.withQr(
//         qr: qrCode!,
//         image: image,
//         color: Colors.black,
//         dataModuleStyle: const QrDataModuleStyle(
//           dataModuleShape: QrDataModuleShape.circle,
//         ),
//       );
//       final ByteData? bytes = await qrPainter.toImageData(
//         200,
//         format: ImageByteFormat.png,
//       );
//       if (bytes == null) {
//         // Handle this block the way you want
//         return null;
//       }
//       final Directory tempDir = await getTemporaryDirectory();
//       final File tempQrFile = await File('${tempDir.path}/qr.jpg').create();
//       final Uint8List list = bytes.buffer.asUint8List();
//       await tempQrFile.writeAsBytes(list);
//       return tempQrFile;
//     }
//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Code Generator'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.share),
//             onPressed: () => shareQrCode(_url),
//           ),
//         ],
//       ),
//       body: Center(
//         child: QrImage(
//           data: _url,
//           version: QrVersions.auto,
//           size: 200.0,
//         ),
//       ),
//     );
//   }
// }

// import 'dart:io';
// import 'dart:typed_data';
// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_share/flutter_share.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'QR Code Generator',
//       home: QRCodeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class QRCodeScreen extends StatefulWidget {
//   @override
//   _QRCodeScreenState createState() => _QRCodeScreenState();
// }

// class _QRCodeScreenState extends State<QRCodeScreen> {
//   final String _data =
//       'https://www.example.com'; // Replace with your desired data
//   GlobalKey _qrKey = GlobalKey();

//   Future<void> _shareQrCode() async {
//     RenderRepaintBoundary boundary =
//         _qrKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//     ui.Image image = await boundary.toImage();
//     ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//     Uint8List pngBytes = byteData!.buffer.asUint8List();

//     // if (Platform.isAndroid || Platform.isIOS) {
//     //   final tempDir = await getTemporaryDirectory();
//     //   final file = await File('${tempDir.path}/qr_code.png').create();
//     //   await file.writeAsBytes(pngBytes);

//     //   await FlutterShare.shareFile(
//     //     title: 'Share QR Code',
//     //     text: 'Here is the QR code',
//     //     filePath: file.path,
//     //   );
//     // } else {
//     //   print("desktop");
//     //   // Use a different approach for sharing QR codes on the web
//     //   // For example, you can generate a data URI and share that
//     //   // final dataUri = await ui.webScene.toDataUriBytes(pngBytes);
//     //   // await FlutterShare.shareData(
//     //   //   text: dataUri.toString(),
//     //   //   title: 'Share QR Code',
//     //   // );
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Code Generator'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.share),
//             onPressed: _shareQrCode,
//           ),
//         ],
//       ),
//       body: Center(
//         child: RepaintBoundary(
//           key: _qrKey,
//           child: QrImageView(
//             data: _data,
//             version: QrVersions.auto,
//             size: 200.0,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final _scaffoldKey = GlobalKey<ScaffoldState>();

//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: const Text('My App'),
//           leading: IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () => _scaffoldKey.currentState?.openDrawer(),
//           ),
//         ),
//         endDrawer: Drawer(
          
//           child: ListView(
//             children: [
//               const DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Settings',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text('Side Menu'),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 title: const Text('Home'),
//                 onTap: () {
//                   // Navigate to home screen
//                 },
//               ),
//               ListTile(
//                 title: const Text('Settings'),
//                 onTap: () {
//                   // Navigate to settings screen
//                 },
//               ),
//               ListTile(
//                 title: const Text('About'),
//                 onTap: () {
//                   // Navigate to about screen
//                 },
//               ),
//             ],
//           ),
//         ),
//         body: const Center(
//           child: Text('Home Screen'),
//         ),
//       ),
//     );
//   }
// }
