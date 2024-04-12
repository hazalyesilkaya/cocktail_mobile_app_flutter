import 'package:flutter/material.dart';

import '../../widgets/detail_page_steps_widget.dart';

steps(
  BuildContext context,
  int index,
  firstStep,
  secondStep,
) {
  return Column(
    children: [
      stepsWidget(context: context, index: index, step: firstStep),
      stepsWidget(context: context, index: index + 1, step: secondStep),
      const SizedBox(height: 8)
    ],
  );
}
