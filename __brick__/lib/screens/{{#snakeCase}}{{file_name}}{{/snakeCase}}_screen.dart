import 'package:flutter/material.dart';
import 'package:{{file_name}}_screen/{{file_name}}_screen.dart';
{{#about_screen}}import './about_screen.dart';{{/about_screen}}
{{#profile_screen}}import './profile_screen.dart';{{/profile_screen}}

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
        [{{#profile_screen}}{
            "title": "Profile",
            "subtitle": "Edit your profile",
            "onTap": () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileScreen())),
          },{{/profile_screen}}
          {{#about_screen}}{
            "title": "About",
            "subtitle": "Version 1.0.0",
            "onTap": () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutScreen())),
          },{{/about_screen}}
        ]
      ),
    );
  }
}