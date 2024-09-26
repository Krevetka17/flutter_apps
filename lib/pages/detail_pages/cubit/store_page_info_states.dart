import 'dart:ui';

import 'package:flutter_cubit/misc/colors.dart';

class StorePageInfoState {
  final int? index;
  final String? name;
  final Color? color;

  StorePageInfoState(
      {this.index, this.name, this.color=const Color(0xFF5d69b3)});
}