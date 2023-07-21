import 'package:flutter/material.dart';

import '../page_transition/page_transition.dart';

navigate({
  required BuildContext context,
  required Widget page,
  required String route,
  Map? argument,
}) {
  Navigator.of(context).push(PageTransition(
    page: page,
    route: route,
    argument: argument,
  ));
}

navigateAndFinish({
  required BuildContext context,
  required Widget page,
  required String route,
  Map? argument,
}) {
  Navigator.of(context).pushAndRemoveUntil(
    PageTransition(
      page: page,
      route: route,
      argument: argument,
    ),
    (route) => false,
  );
}

navigatePop({
  required BuildContext context,
}) {
  Navigator.of(context).pop();
}
