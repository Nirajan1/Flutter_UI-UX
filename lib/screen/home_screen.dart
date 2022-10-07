import 'package:flutter/material.dart';

import 'package:ui_ux_design_1/widgets/custome_grid_view.dart';

import 'package:ui_ux_design_1/widgets/custome_listbuilder.dart';
import 'package:ui_ux_design_1/widgets/custome_listtile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          MyListTile(title: 'Category'),
          SizedBox(
            height: 10.0,
          ),
          ListViewBuilder(),
          SizedBox(
            height: 10.0,
          ),
          MyListTile(title: 'Popular products'),
          GridViewBuilder(),
        ],
      ),
    );
  }
}
