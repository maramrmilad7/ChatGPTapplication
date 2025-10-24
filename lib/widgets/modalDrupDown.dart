import 'package:chatgptapplication/constants/constants.dart';
import 'package:flutter/material.dart';

class ModalDrupDown extends StatefulWidget {
  const ModalDrupDown({super.key});

  @override
  State<ModalDrupDown> createState() => _ModalDrupDownState();
}

class _ModalDrupDownState extends State<ModalDrupDown> {
  String currentModel = "Model1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: getModelsItem,
      value: currentModel,
      dropdownColor: scaffoldBackgroundColor,
     // iconEnabledColor: Colors.white,
      onChanged: (value) {
        currentModel = value.toString();
        setState(() {});
      },
    );
  }
}
