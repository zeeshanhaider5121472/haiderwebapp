// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dropdown',
      home: DropdownLanguage(),
    );
  }
}

class DropdownLanguage extends StatefulWidget {
  const DropdownLanguage({super.key});

  @override
  _DropdownLanguageState createState() => _DropdownLanguageState();
}

class _DropdownLanguageState extends State<DropdownLanguage> {
  String selectedLanguage = 'English';
  List<String> languages = ['English', 'Français', 'Español', 'Deutsch'];

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.fromLTRB(12, 5, 12, 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Align children at the start and end
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Language"),
          SizedBox(
            height: 20,
            child: DropdownButton<String>(
              underline: Container(),
              isExpanded: true,
              value: selectedLanguage,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              // style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        color: themeController.isLightTheme
                            ? Colors.white
                            : Colors.black),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
