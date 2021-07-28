import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/providers/ui_provider.dart';

class CustomNavigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    return BottomNavigationBar(
        onTap: (int i) => iuProvider.menuSelect = i,
        currentIndex: indexPosition,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation), label: 'Menu Generar Qr'),
          BottomNavigationBarItem(
              icon: Icon(Icons.scanner), label: 'Scan Qr'),
              BottomNavigationBarItem(
              icon: Icon(Icons.photo), label: 'Select Photo'),
          
        ]);
  }
}