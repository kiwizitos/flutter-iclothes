import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter_svg/flutter_svg.dart';

import 'package:iclothes/core/theme/app_typography.dart';
import 'package:iclothes/features/detail/detail_screen.dart';
import 'package:iclothes/models/item_model.dart';

class HomeGridListWidget extends StatefulWidget {
  const HomeGridListWidget({Key? key}) : super(key: key);

  @override
  State<HomeGridListWidget> createState() => _HomeGridListWidgetState();
}

class _HomeGridListWidgetState extends State<HomeGridListWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Text("${data.error}");
        } else if (data.hasData) {
          var items = data.data as List<ItemModel>;
          return ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Text(
                  "O que vamos vestir hoje?",
                  style: AppTypography.highlightText(context),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 220,
                width: double.maxFinite,
                child: SvgPicture.asset('assets/svg/iclothes2.svg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisExtent: 250,
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(itemModel: items[index])));
                      },
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              height: 120,
                              child: Image(
                                image: AssetImage(
                                    items[index].imageUrl.toString()),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          items[index].name.toString(),
                                          style:
                                              AppTypography.bodyTextBold(context),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          'R\$${items[index].value.toString()}',
                                          style: AppTypography.subText(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline))
                              ],
                            ),
                            const Divider(
                              thickness: 4,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(
                                    items[index].profileUrl.toString()),
                              ),
                              title: Text(
                                items[index].profile.toString(),
                                style: AppTypography.subText(context),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<List<ItemModel>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString("assets/json/item_list.json");
    final list = json.decode(jsonData) as List<dynamic>;

    return list.map((e) => ItemModel.fromJson(e)).toList();
  }
}
