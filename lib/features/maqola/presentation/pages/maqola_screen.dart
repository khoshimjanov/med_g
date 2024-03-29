import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:med_g/assets/colors.dart';
import 'package:med_g/assets/icons.dart';
import 'package:med_g/assets/images.dart';

class MaqolaScreen extends StatelessWidget {
  const MaqolaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text('Maqolalar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
      child: Column(children: List.generate(
                            5,
                            (index) => Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              // width: 330,
                              height: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Kunlik badantarbiyaning foydalari"),
                                      Gap(50),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        width: 80,
                                        height: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Image.asset(
                                              AppImages.picture,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text("Dr. Alisher Bahodirovich"),
                                  Text("Kardiologiya"),
                                  Divider(),
                                  Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consequat ornare arcu, sit amet commodo velit iaculis ut. Donec enim."),
                                  Row(
                                    children: [
                                      Text("12.04.2022y"),
                                      Gap(200),
                                      SvgPicture.asset(AppIcons.nonsave)
                                    ],
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: AppColors.blue)),
                            ),
                          ),),
    ),);
  }
}