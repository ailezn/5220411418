import 'package:flutter/material.dart';
import 'package:tugas_bab_3/widget/stack_screen.dart';
import 'package:tugas_bab_3/widget/padding_screen.dart';
import 'package:tugas_bab_3/widget/align_screen.dart';
import 'package:tugas_bab_3/widget/text_field_screen.dart';
import 'package:tugas_bab_3/widget/container_screen.dart';
import 'package:tugas_bab_3/widget/icon_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tugas Bab 3',
          style: TextStyle(
            fontWeight: FontWeight.bold, 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 239, 236, 236), 
      ),
      body: Container(
        color: Colors.black, 
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(context, 'Stack', StackScreen()),
                _buildButton(context, 'Padding', PaddingScreen()),
                _buildButton(context, 'Align', AlignScreen()),
                _buildButton(context, 'Text Field', TextFieldScreen()),
                _buildButton(context, 'Container', ContainerScreen()),
                _buildButton(context, 'Icon', IconScreen()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50), 
          padding: EdgeInsets.symmetric(vertical: 15), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), 
          ),
        ).copyWith(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            return Colors.transparent; 
          }),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.pink], 
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18, 
              color: Colors.white, 
            ),
          ),
        ),
      ),
    );
  }
}