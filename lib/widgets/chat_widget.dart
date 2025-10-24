import 'package:chatgptapplication/constants/constants.dart';
import 'package:chatgptapplication/services/assets_manager.dart';
import 'package:chatgptapplication/widgets/textwidget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.messege, required this.msgIndex});
  final String messege;
  final int msgIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: msgIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    msgIndex == 0
                        ? AssetsManager.userImage
                        : AssetsManager.botImage,
                    height: 30,
                    width: 30,
                  ),
                ),
                Expanded(
                  child: msgIndex == 0
                      ? CustomTextWidget(text: messege)
                      : CustomTextWidget(text: messege),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
