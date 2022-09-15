import 'package:flutter/material.dart';
import 'package:settings_screen/settings_screen.dart';
import './about_screen.dart';

class {{file_name.pascalCase()}}Screen extends StatelessWidget {
  const {{file_name.pascalCase()}}Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: settingsScreen(
        [{{#about_screen}}
          {
            "title": "About",
            "subtitle": "Version 1.0.0",
            "onTap": () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutScreen())),
          },{{/about_screen}}
        ],
        // optional
      ),
    );
  }
}