import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRScreen extends StatefulWidget {
  const GenerateQRScreen({super.key});

  @override
  State<GenerateQRScreen> createState() => _GenerateQRScreenState();
}

class _GenerateQRScreenState extends State<GenerateQRScreen> {
  final TextEditingController _controller = TextEditingController();
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Generate QR Code')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter data to generate QR',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  qrData = _controller.text.trim();
                });
              },
              child: const Text("Generate QR Code"),
            ),
            const SizedBox(height: 20),
            if (qrData != null && qrData!.isNotEmpty)
              QrImageView(
                data: qrData!,
                version: QrVersions.auto,
                size: 200.0,
              ),
          ],
        ),
      ),
    );
  }
}
