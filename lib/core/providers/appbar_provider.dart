import 'package:flutter/foundation.dart';

class AppbarProvider extends ChangeNotifier {
  bool _hovered = false;

  bool get hovered => _hovered;

  void setHovered() {
    _hovered = !_hovered;
    notifyListeners();
  }
}
