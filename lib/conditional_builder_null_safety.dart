library conditional_builder_null_safety;

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
}
