import 'package:flutter/material.dart';
import 'package:flutter_modular_architecture_main/screen/home.dart';
import 'package:shell/helpers/app.dart';

void main() {
  Application().initialize(mainScreen: const HomeScreen());
}
