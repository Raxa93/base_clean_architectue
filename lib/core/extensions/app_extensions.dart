




import 'package:flutter/material.dart';

extension NumSizeBoxExtensionb on num{


  Widget get width => SizedBox(width: toDouble());
  Widget get height => SizedBox(height: toDouble());

}