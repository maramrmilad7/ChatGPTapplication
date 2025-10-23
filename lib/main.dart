import 'package:chatgptapplication/constants/constants.dart';
import 'package:chatgptapplication/views/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatGptApp());
}
class ChatGptApp extends StatelessWidget {
  const ChatGptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme:  AppBarTheme(
          color: cardColor,
        ),
      ),
      home:ChatScreen()
    );
  }
}