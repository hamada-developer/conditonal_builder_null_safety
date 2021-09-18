library conditional_builder_null_safety;

import 'dart:math';

import 'package:flutter/material.dart';

class ConditionalBuilder extends StatelessWidget {
  final bool condition;

  final WidgetBuilder builder;

  final WidgetBuilder? fallback;

  ConditionalBuilder({
    required this.condition,
    required this.builder,
    required this.fallback,
  });

  @override
  Widget build(BuildContext context) => condition
      ? builder(context)
      : fallback != null
          ? fallback!(context)
          : Container();

  // generate random between minimum and maximum
  int generateRandom({
    required int min,
    required int max,
  }) => min + Random.secure().nextInt(max - min);
}
