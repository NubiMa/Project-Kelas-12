import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Trying Flutter Project'),
        backgroundColor: const Color.fromARGB(255, 173, 135, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TEKS
            const Text(
              'Hi, I still learn bout flutter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // ELEVATED BUTTON
            ElevatedButton(
              onPressed: () {
                print("Button clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HaloPage()),
                );
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[50],
                foregroundColor: const Color.fromARGB(255, 128, 73, 162),
              ),
              child: const Text('Click Here'),
            ),
            const SizedBox(height: 24),

            // GAMBAR (selfie)
            Image.asset(
              'assets/kocheng.jpg', // <-- ganti dengan foto selfie lo
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 24),

            // CONTAINER
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Wanna build website with low price? Contact Us!',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HaloPage extends StatelessWidget {
  const HaloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kembali"),
      ),
      body: Center(
        child: Text(
          "M Fadhil Maulana S / 09 / XII RPL2",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}