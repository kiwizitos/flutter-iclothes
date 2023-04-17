import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:iclothes/core/theme/app_colors.dart';

import '../../../core/theme/app_typography.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("Carrinho"),
            backgroundColor: AppColors.white,
            iconTheme: IconThemeData(color: AppColors.lightBlue),
          ),
          SliverToBoxAdapter(
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image(
                    image: AssetImage("assets/images/products/001.jpg"),
                  ),
                  title: Text(
                      "Saia midi cintura alta - Estampa de coelhinhos e fundo azul claro",
                      overflow: TextOverflow.ellipsis),
                  trailing: Text("R\$30.00"),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpandablePanel(
                      theme: const ExpandableThemeData(
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center),
                      header: Text(
                        "Entrega/Retirada",
                        style: AppTypography.highlightText(context),
                      ),
                      collapsed: ExpandableButton(
                        child: const SizedBox(),
                      ),
                      expanded: Column(
                        children: const [
                          ListTile(
                            title: Text("Entrega"),
                            subtitle: Text(
                                "É possível agendar o envio do seu pedido."),
                            trailing: Icon(
                              Icons.circle,
                              color: AppColors.lightBlue,
                            ),
                          ),
                          ListTile(
                            title: Text("Retirada"),
                            trailing: Icon(Icons.circle_outlined),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpandablePanel(
                      theme: const ExpandableThemeData(
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center),
                      header: Text(
                        "Compra/Locação",
                        style: AppTypography.highlightText(context),
                      ),
                      collapsed: ExpandableButton(
                        child: const SizedBox(),
                      ),
                      expanded: Column(
                        children: const [
                          ListTile(
                            title: Text("Comprar"),
                            trailing: Icon(
                              Icons.circle_outlined,
                            ),
                          ),
                          ListTile(
                            title: Text("Alugar"),
                            subtitle: Text(
                                "O valor é aplicado para o prazo de uma semana"),
                            trailing: Icon(
                              Icons.circle,
                              color: AppColors.lightBlue,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpandablePanel(
                      theme: ExpandableThemeData(
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center),
                      header: Text("Forma de pagamento",
                          style: AppTypography.highlightText(context)),
                      collapsed: ExpandableButton(
                        child: const SizedBox(),
                      ),
                      expanded: Column(
                        children: [
                          ListTile(
                            title: Text("Crédito (8490)"),
                            trailing: Icon(
                              Icons.circle,
                              color: AppColors.lightBlue,
                            ),
                          ),
                          ListTile(
                            title: Text("Débito (2740)"),
                            trailing: Icon(Icons.circle_outlined),
                          ),
                          ListTile(
                            leading: Icon(Icons.add),
                            title: Text("Adicionar Cartão"),
                          ),
                          Divider(
                            thickness: 4,
                          ),
                          ListTile(
                            title: Text("Usar meus pontos?"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 100,
                                  child: TextField(
                                    style: AppTypography.subText(context),
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration:
                                        InputDecoration(hintText: "Quantidade"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Pontos atuais: 910",
                                    style: AppTypography.subText(context),
                                  ),
                                )
                              ],
                            ),
                            trailing: Icon(
                              Icons.check_box,
                              color: AppColors.lightBlue,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal", style: AppTypography.highlightText(context),),
                              Text("R\$30,00", style: AppTypography.highlightText(context),),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Frete", style: AppTypography.subText(context),),
                            Text("R\$5,90", style: AppTypography.subText(context),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Desconto", style: AppTypography.subText(context),),
                            Text("-R\$0,00", style: AppTypography.subText(context),),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: AppColors.darkBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Total",
                  style: AppTypography.highlightText(context)!
                      .copyWith(color: AppColors.white),
                ),
                Text(
                  "35,90",
                  style: AppTypography.subText(context)!
                      .copyWith(color: AppColors.white),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Finalizar compra"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Shipment { delivery, fetch }
