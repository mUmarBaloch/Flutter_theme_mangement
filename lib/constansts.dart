import 'package:flutter/material.dart';

import 'core/theme.dart';

BoxDecoration containerDecoration() => BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: CustomTheme.isDark
              ? CustomTheme.primaryColor as Color
              : CustomTheme.foregroundColor!
            ..value,
          offset: Offset(1, 1),
          spreadRadius: 0,
          blurRadius: 20,
        ),
      ],
      borderRadius: BorderRadius.circular(25),
      color: CustomTheme.foregroundColor,
    );
