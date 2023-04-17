import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class FidelityPage extends StatelessWidget {
  const FidelityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Fidelidade"),
        backgroundColor: AppColors.lightBlue,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 150,
            width: double.maxFinite,
            child: SvgPicture.asset('assets/svg/iclothes6.svg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Text(
              "Suba seu nível e multiplique os pontos ganhos por cada compra!",
              style: AppTypography.subText(context),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "Nível 01",
            style: AppTypography.highlightText(context),
          ),
          const ProgressBar(
            value: 0.5,
            backgroundColor: AppColors.gray,
            color: AppColors.darkBlue,
            height: 16,
            width: 300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Pontos",
                        style: AppTypography.highlightText(context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "910",
                            style: AppTypography.bodyTextBold(context),
                          ),
                          const Text("1.1x")
                        ],
                      ),
                    ],
                  ),
                ),
                const Flexible(
                  child: SizedBox(
                    width: 150,
                    child: Text(
                        "Seus pontos geram descontos em todas as suas compras",
                        textAlign: TextAlign.center),
                  ),
                )
              ],
            ),
          ),
          const Text("Ganhe pontos todos os dias"),
          OutlinedButton(
            onPressed: () {
              const snackBar = SnackBar(
                content: Text("Você já resgatou seus pontos hoje"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              ),
            ),
            child: Text(
              "Resgatar",
              style: AppTypography.highlightText(context)!
                  .copyWith(color: AppColors.gray),
            ),
          ),
        ],
      ),
    );
  }
}
