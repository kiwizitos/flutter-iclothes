import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/features/home/pages/shopping_page.dart';
import 'package:iclothes/features/home/pages/widgets/home_grid_list_widget.dart';

import 'pages/favorite_page.dart';
import 'pages/measure_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MeasurePage()));
            },
            icon: const Icon(Icons.table_view),
            color: AppColors.lightBlue,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FavoritePage()));
            },
            icon: const Icon(Icons.favorite),
            color: AppColors.lightBlue,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingPage()));
            },
            icon: Badge(
                badgeContent: const Text('1', style: TextStyle(color: AppColors.lightBlue)),
                badgeColor: AppColors.white,
                position: BadgePosition.bottomEnd(),
                child: const Icon(Icons.shopping_cart)),
            color: AppColors.lightBlue,
          )
        ],
      ),
      body: HomeGridListWidget(),
    );
  }
}
