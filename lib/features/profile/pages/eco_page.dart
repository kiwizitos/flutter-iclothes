import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';

class EcoPage extends StatelessWidget {
  const EcoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: AppColors.lightBlue,
            flexibleSpace: FlexibleSpaceBar(
              background: Center(
                child: SvgPicture.asset(
                  "assets/svg/eco.svg",
                  height: 300,
                ),
              )
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      Text("Vestir consciente", style: AppTypography.highlightText(context),),
                      Text(
                          "Todos nós sabemos que uma boa roupa faz toda diferença, principalmente quando compramos algo novo e logo queremos usar, seja a ocasião que tiver, só para desfilar com ela. Mas já pararam para pensar nos efeitos que as roupas têm no meio ambiente?",
                          style: AppTypography.bodyText(context)),
                      Text(
                          "Uma roupa demora cerca de 50 anos para se decompor; além do que, a indústria da moda é a segunda mais poluente do mundo. Segundo uma pesquisa feita pela professora da Universidade de São Paulo (USP), Francisca Dantas, cerca de 12 toneladas de resíduos de roupa e 36 toneladas de resíduos têxteis são descartados nas calçadas dos bairros centrais, como Brás e Bom Retiro. ",
                          style: AppTypography.bodyText(context)),
                      Text(
                          "Por isso, nós do iClothes valorizamos tanto os brechós e queremos que eles cheguem aos mais diversos públicos e ganhem muito mais reconhecimento.",
                          style: AppTypography.bodyText(context)),
                      Text(
                          "O intuito de um brechó é também evitar esse impacto no meio ambiente, onde roupas que não nos agradem, não vão parar na massa, que é o desperdício de produtos têxteis. ",
                          style: AppTypography.bodyText(context)),
                      Text(
                          "E agora você pode fazer parte desse movimento com a gente! Além de ajudar a diminuir esse impacto, você terá acesso às mais diversas roupas e ter a oportunidade de poupar um bom dinheiro, o que todos nós adoramos, né?",
                          style: AppTypography.bodyText(context)),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
