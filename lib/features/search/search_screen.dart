import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iclothes/core/theme/app_typography.dart';

import '../../core/theme/app_colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategorySection(),
    );
  }
}

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categoryName = CategoryData.getCategory;
  final categoryImage = CategoryData.getImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: AppColors.white,
            toolbarHeight: 80,
            pinned: true,
            title: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: TextField(
                    style:
                        AppTypography.bodyText(context)!.copyWith(fontSize: 14),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          icon: const Icon(Icons.arrow_circle_right_outlined),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide:
                              BorderSide(width: 2, color: AppColors.black),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(width: 2, color: AppColors.lightBlue),
                        ),
                        hintText: 'Digite aqui sua procura...'),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: categoryName.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                  height: 120,
                  width: double.maxFinite,
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 8),
                        child: Stack(alignment: Alignment.center, children: [
                          SvgPicture.asset(categoryImage[index],
                              fit: BoxFit.cover),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              categoryName[index],
                              style: AppTypography.highlightText(context),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryData {
  static final getCategory = [
    'Camisa',
    'Vestidos',
    'Calças',
    'Sapatos',
    'Acessórios'
  ];

  static final getImage = [
    "assets/svg/shirt.svg",
    "assets/svg/dress.svg",
    "assets/svg/pants.svg",
    "assets/svg/boot.svg",
    "assets/svg/ribbon.svg"
  ];
}
