import 'package:flutter/material.dart';
import 'package:localancer/size_config.dart';

class FLhomescreen extends StatefulWidget {
  const FLhomescreen({super.key});

  @override
  State<FLhomescreen> createState() => _FLhomescreenState();
}

class _FLhomescreenState extends State<FLhomescreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold();
  }
}
