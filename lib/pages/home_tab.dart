import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/pages/pagesView/page1.dart';
import 'package:proyecto/providers/ui_provider.dart';
import 'package:proyecto/widgets/custom_navigator.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Tab'),
        actions: [],
      ),
      body: HomeTabContainer(),
      bottomNavigationBar: CustomNavigations(),
      //floatingActionButton: BottomCamera(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomeTabContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    switch (indexPosition) {
      case 0:
        return Page1();
      default:
      return Page1();
    }

    // return Center(
    //   child: Text('Hola mundo'),
    // );
  }
}
