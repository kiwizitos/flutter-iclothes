import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';
import 'package:iclothes/features/profile/pages/company_page.dart';
import 'package:iclothes/features/profile/pages/fidelity_page.dart';
import 'package:iclothes/features/profile/pages/info_page.dart';
import 'package:iclothes/features/profile/pages/ticket_page.dart';

import 'pages/eco_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(top: height),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundColor: AppColors.white,
                      child: SvgPicture.asset("assets/svg/profile.svg"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Olá,",
                        style: AppTypography.subText(context),
                      ),
                      Wrap(
                        spacing: -8,
                        direction: Axis.vertical,
                       crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text(
                            "Matheus",
                            style: AppTypography.highlightText(context),
                          ),
                          Text("@Kiwizitos", style: AppTypography.subText(context),),
                        ],
                      ),
                      Divider(),
                      Text(
                        "Você já fez 3 compras pela iClothes!",
                        style: AppTypography.subText(context)
                            ?.copyWith(color: AppColors.darkBlue),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _profileData.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_profileData[index].title),
                      leading: Icon(_profileData[index].icon),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => _profileData[index].route));
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  final _profileData = [
    ListData(
      title: 'Informações de perfil',
      icon: Icons.info_outline,
      route: InfoPage(),
    ),
    ListData(
      title: "Cupons",
      icon: Icons.sticky_note_2,
      route: TicketPage(),
    ),
    ListData(
      title: "Fidelidade",
      icon: Icons.star,
      route: FidelityPage(),
    ),
    ListData(
      title: "Vestir Consciente",
      icon: Icons.spa,
      route: EcoPage(),
    ),
    ListData(
      title: "Sobre a empresa",
      icon: Icons.home,
      route: CompanyPage(),
    ),
  ];
}

class ListData {
  final String title;
  final IconData icon;
  final Widget route;

  ListData({required this.title, required this.icon, required this.route});
}
