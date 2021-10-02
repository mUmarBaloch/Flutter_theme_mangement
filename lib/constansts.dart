import 'package:flutter/material.dart';

import 'core/theme.dart';

BoxDecoration containerDecoration() => BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: CustomTheme.isDark
              ? Colors.deepPurple
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
