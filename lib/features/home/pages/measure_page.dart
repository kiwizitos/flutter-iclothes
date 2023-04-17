import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';

class MeasurePage extends StatelessWidget {
  const MeasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.lightBlue,
        title: const Text("Tabela de medidas"),
      ),
      body: Container(
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              SvgPicture.asset("assets/svg/wardrobe.svg", fit: BoxFit.contain, height: 200,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColors.gray),
                  borderRadius: const BorderRadius.all(Radius.circular(16))
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: const {
                      0: IntrinsicColumnWidth(),
                      1: IntrinsicColumnWidth(),
                      2: IntrinsicColumnWidth(),
                      3: IntrinsicColumnWidth(),
                    },
                    children: [
                      TableRow(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1, color: AppColors.gray)),
                          color: AppColors.lightBlue,
                        ),
                          children: [
                        SizedBox(height: 50, child: Center(child: Text("Tamanho", style: AppTypography.bodyText(context)!.copyWith(color: AppColors.white),))),
                        SizedBox(height: 50, child: Center(child: Text("Busto", style: AppTypography.bodyText(context)!.copyWith(color: AppColors.white),))),
                        SizedBox(height: 50, child: Center(child: Text("Cintura", style: AppTypography.bodyText(context)!.copyWith(color: AppColors.white),))),
                        SizedBox(height: 50, child: Center(child: Text("Quadril", style: AppTypography.bodyText(context)!.copyWith(color: AppColors.white),)))
                      ]),
                      const TableRow(children: [
                        SizedBox(height: 30, child: Center(child: Text("PP/36"))),
                        Center(child: Text("78 - 84")),
                        Center(child: Text("62 - 66")),
                        Center(child: Text("90 - 94")),
                      ]),
                      const TableRow(
                        children: [
                          SizedBox(height: 30, child: Center(child: Text("P/38"))),
                          Center(child: Text("84 - 90")),
                          Center(child: Text("66 - 70")),
                          Center(child: Text("94 - 98")),
                        ],
                      ),
                      const TableRow(
                        children: [
                          SizedBox(height: 30, child: Center(child: Text("M/40"))),
                          Center(child: Text("90 - 96")),
                          Center(child: Text("70 - 74")),
                          Center(child: Text("98 - 102")),
                        ],
                      ),
                      const TableRow(
                        children: [
                          SizedBox(height: 30, child: Center(child: Text("G/42"))),
                          Center(child: Text("96 - 102")),
                          Center(child: Text("74 - 78")),
                          Center(child: Text("102 - 106")),
                        ],
                      ),
                      const TableRow(
                        children: [
                          SizedBox(height: 30, child: Center(child: Text("GG/44"))),
                          Center(child: Text("102 - 108")),
                          Center(child: Text("78 - 82")),
                          Center(child: Text("106 - 110")),
                        ],
                      ),
                      const TableRow(children: [
                        SizedBox(height: 30, child: Center(child: Text("G1/46"))),
                        Center(child: Text("108 - 114")),
                        Center(child: Text("82 - 86")),
                        Center(child: Text("110 - 114")),
                      ]),
                      const TableRow(
                        children: [
                          SizedBox(height: 30, child: Center(child: Text("G2/48"))),
                          Center(child: Text("114 - 120")),
                          Center(child: Text("86 - 90")),
                          Center(child: Text("114 - 118")),
                        ],
                      ),
                      const TableRow(
                        children: [
                          SizedBox(height: 30, child: Center(child: Text("G3/50"))),
                          Center(child: Text("120 - 126")),
                          Center(child: Text("90 - 94")),
                          Center(child: Text("118 - 122")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
