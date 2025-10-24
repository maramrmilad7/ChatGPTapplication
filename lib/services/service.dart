import 'package:chatgptapplication/constants/constants.dart';
import 'package:chatgptapplication/widgets/modalDrupDown.dart';
import 'package:chatgptapplication/widgets/textwidget.dart';
import 'package:flutter/material.dart';

class Service{
  static Future<void> showModalSheet({required BuildContext context})async{
    return  await showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20)
                  )
                ),
                backgroundColor: scaffoldBackgroundColor,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: CustomTextWidget(
                            text: 'Chosen Model :',
                          fontsize: 16,
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: ModalDrupDown())
                      ],
                    ),
                  );
                },
              );
  }
}