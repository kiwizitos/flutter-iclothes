import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iclothes/core/theme/app_typography.dart';

import '../../../core/theme/app_colors.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.lightBlue,
        title: Text("Seus cupons"),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 220,
            width: double.maxFinite,
            child: SvgPicture.asset('assets/svg/iclothes2.svg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Text(
                "Use seus cupons para obeter descontos exclusivos em produtos e no frete",
                style: AppTypography.subText(context),
                textAlign: TextAlign.center),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Cupom",
                            style: AppTypography.highlightText(context),
                          ),
                          Text("válido para a primeira compra")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 100,
                    child: Container(
                      color: AppColors.lightBlue,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Desconto",
                              style:
                                  AppTypography.bodyTextBold(context)!.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              "15%",
                              style: AppTypography.highlightText(context)!
                                  .copyWith(color: AppColors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Cupom",
                            style: AppTypography.highlightText(context),
                          ),
                          Text("válido para compras acima de R\$75,00")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 100,
                    child: Container(
                      color: AppColors.yellow,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Desconto",
                              style: AppTypography.bodyTextBold(context)!
                                  .copyWith(color: AppColors.white),
                            ),
                            Text(
                              "25%",
                              style: AppTypography.highlightText(context)!
                                  .copyWith(
                                color: AppColors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Cupom",
                            style: AppTypography.highlightText(context),
                          ),
                          Text("válido para compras acima de R\$100,00")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 100,
                    child: Container(
                      color: AppColors.green,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Frete",
                              style: AppTypography.bodyTextBold(context)!
                                  .copyWith(color: AppColors.white),
                            ),
                            Text(
                              "Grátis",
                              style: AppTypography.highlightText(context)!
                                  .copyWith(
                                color: AppColors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
