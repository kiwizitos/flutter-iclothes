import 'package:flutter/material.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            iconTheme: IconThemeData(color: AppColors.lightBlue),
            backgroundColor: AppColors.white,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Center(
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.contain,
                  height: 150,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      Text(
                        "O iClothes é um serviço focado em priorizar as necessidades e agilidade, tendo em vista tornar prática a locação/compra e entrega das roupas disponibilizadas por nossos brechós parceiros. São roupas de qualidade, por um preço acessível e que já passaram pelo processo de curadoria.",
                        style: AppTypography.bodyText(context),
                      ),
                      Text(
                        "MISSÃO: Nossa missão é levar o reconhecimento de brechós o mais longe possível. Mostrar que são roupas de qualidade e com custo-benefício acessível. Em nosso serviço, além de ajudar empreendedores locais a se desenvolverem, queremos trazer a acessibilidade e diversidade para o ramo.",
                        style: AppTypography.bodyText(context),
                      ),
                      Text(
                        "VISÃO: Almejamos ser a maior rede de conectividade entre brechós da Zona Leste da cidade de São Paulo.",
                        style: AppTypography.bodyText(context),
                      ),
                      Text(
                        "VALORES: Confiança, diversidade, sustentabilidade e solicitude.",
                        style: AppTypography.bodyText(context),
                      )
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
