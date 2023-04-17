import 'package:flutter/material.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Informações do perfil",
        ),
      ),
      body: Container(
        color: AppColors.white,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            Flexible(
              child: Wrap(
                runSpacing: 20,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome Completo:',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'CPF:',
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'E-mail:',
                          ),
                        ),
                        Text(
                          "Confirmar email",
                          textAlign: TextAlign.right,
                          style: AppTypography.subText(context)!
                              .copyWith(color: AppColors.lightBlue),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Celular:',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Salvar alterações",
                      style: AppTypography.highlightText(context)!
                          .copyWith(color: AppColors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.lightBlue,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 64)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
