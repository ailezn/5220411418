import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Padding',
          style: TextStyle(
            color: Colors.white, // Mengatur warna teks menjadi putih
            fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
          ),
        ),
        backgroundColor: Colors.black, // Warna latar belakang AppBar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white, // Mengatur warna ikon menjadi putih
          ),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Container(
        color: Colors.black, // Latar belakang hitam
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red, // Warna kontainer
                borderRadius: BorderRadius.circular(15), // Sudut melengkung
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Warna bayangan
                    spreadRadius: 5, // Jarak bayangan
                    blurRadius: 7, // Kelembutan bayangan
                    offset: Offset(0, 3), // Posisi bayangan
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}