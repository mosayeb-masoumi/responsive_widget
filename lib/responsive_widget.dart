
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const ResponsiveWidget({Key? key, required this.mobile, required this.tablet, required this.web}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context ,constraints){
      if(constraints.maxWidth < 600){
        return mobile;
      }else{
        return  tablet;
      }
    });
  }
}
