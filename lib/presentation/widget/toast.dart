import 'package:fluttertoast/fluttertoast.dart';

showToast({
  required String text,
}) {
  Fluttertoast.showToast(msg: text);
}