import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQRScreen extends StatefulWidget {
  const ScanQRScreen({super.key});

  @override
  State<ScanQRScreen> createState() => _ScanQRScreenState();
}

class _ScanQRScreenState extends State<ScanQRScreen> {
  String? scannedData;
  String? lastScanned;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan QR Code')),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: MobileScanner(
              controller: MobileScannerController(),
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                for (final barcode in barcodes) {
                  final String? code = barcode.rawValue;
                  if (code != null && code != lastScanned) {
                    lastScanned = code;
                    setState(() {
                      scannedData = code;
                    });
                    break; // Stop after first valid scan
                  }
                }
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                scannedData == null ? "Scan a QR code" : "Scanned: $scannedData",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
