import 'package:flutter/material.dart';
import 'package:h2o_admin_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_admin_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';

class ListOrdersScreen extends StatelessWidget {

  static const String name = 'list_orders_screen';

  const ListOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(),
      body: Placeholder(),
      bottomNavigationBar: BottomNavigatorBarCustom(),
    );
  }
}