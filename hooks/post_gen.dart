import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.info('Running post_gen.dart hook');

  Process.runSync("flutter", [
    "pub",
    "add",
    "settings_screen",
  ]);

  if (context.vars["about_screen"]) {
    Process.runSync("flutter", [
      "pub",
      "add",
      "about_screen",
    ]);
  }

  context.logger.info('Finished running post_gen.dart hook');
}
