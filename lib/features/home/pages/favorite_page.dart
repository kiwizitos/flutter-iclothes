import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.lightBlue,
        title: const Text("Favoritos"),
      ),
      body: Container(
        color: AppColors.white,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/iclothes1.svg", height: 200,),
              Text("Ops, parece que você ainda não adicicionou nenhum item aos seus favoritos.",style: AppTypography.highlightText(context), textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}