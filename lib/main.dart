import 'package:flutter/material.dart';
import 'package:flutter_app_iot3/views/start_ui.dart';

main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartUI(),
      theme: ThemeData(
        fontFamily: 'Prompt',
      ),
    ),
  );
}