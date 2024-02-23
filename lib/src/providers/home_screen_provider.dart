import 'package:flutter/foundation.dart';

class HomeScreenProvider extends ChangeNotifier {
  int _selectedIndex = -1;
  int _selectedSocial = -1;
  int _selectedGeneral = -1;
  int _selectedHomeItem = 1;

  int get selectedSocial => _selectedSocial;
  int get selectedIndex => _selectedIndex;
  int get selectedGeneral => _selectedGeneral;
  int get selectedHomeItem => _selectedHomeItem;

  void setSelectedHomeItem({required int value}){
    _selectedHomeItem = value;
    notifyListeners();
  }

  void setSelectedSocial({required int value}){
    _selectedIndex = -1;
    _selectedGeneral = -1;
    _selectedSocial = value;
    notifyListeners();
  }

  void setIndex({required int value}) {
    _selectedGeneral = -1;
    _selectedSocial = -1;
    _selectedIndex = value;
    notifyListeners();
  }

  void setGeneral({required int value}) {
    _selectedSocial = -1;
    _selectedIndex = -1;
    _selectedGeneral = value;
    notifyListeners();
  }
}
