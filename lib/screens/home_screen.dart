import 'package:flutter/material.dart';
import 'generate_qr_screen.dart';
import 'scan_qr_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Code App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const GenerateQRScreen()));
              },
              icon: const Icon(Icons.qr_code),
              label: const Text("Generate QR Code"),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ScanQRScreen()));
              },
              icon: const Icon(Icons.qr_code_scanner),
              label: const Text("Scan QR Code"),
            ),
          ],
        ),
      ),
    );
  }
}
