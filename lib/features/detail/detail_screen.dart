import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';
import 'package:iclothes/features/home/pages/measure_page.dart';
import 'package:iclothes/models/item_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.itemModel}) : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.lightBlue,
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 400,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: IconButton(icon: Icon(Icons.favorite_outline), onPressed: () {},),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(itemModel.imageUrl.toString()),
                fit: BoxFit.cover,
                height: 200,
                width: double.maxFinite,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height - 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: ListTile(
                      title: Text(
                        itemModel.name.toString(),
                        style: AppTypography.highlightText(context)
                      ),
                      subtitle: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Tamanho: ${itemModel.size.toString()}", style: AppTypography.bodyText(context),),
                          IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const MeasurePage()));
                          }, icon: Icon(Icons.help_outline, color: AppColors.lightBlue, size: 16,))
                        ],
                      ),
                      trailing: Text(
                        'R\$${itemModel.value.toString()}',
                        style: AppTypography.highlightText(context)!.copyWith(color: AppColors.darkBlue),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            itemModel.profileUrl.toString()),
                      ),
                      title: Text(
                        itemModel.profile.toString(),
                        style: AppTypography.bodyText(context),
                      ),
                      subtitle: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: AppColors.yellow, size: 16),
                          Text("4.9", style: AppTypography.subText(context),)
                        ],
                      ),
                      trailing: Text(
                        "Seguir"
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  random(int min, int max) {
    return min + Random().nextInt(max - min);
  }
}
