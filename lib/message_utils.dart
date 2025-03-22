import 'package:fluttertoast/fluttertoast.dart';

class MessageUtils {
  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT);
  }
}
