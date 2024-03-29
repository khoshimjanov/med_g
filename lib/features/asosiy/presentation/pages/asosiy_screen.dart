import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:med_g/assets/colors.dart';
import 'package:med_g/assets/icons.dart';
import 'package:med_g/assets/images.dart';
import 'package:med_g/features/asosiy/presentation/pages/single_article.dart';

class AsosiyScreen extends StatefulWidget {
  const AsosiyScreen({super.key});

  @override
  State<AsosiyScreen> createState() => _AsosiyScreenState();
}

class _AsosiyScreenState extends State<AsosiyScreen> {
  final categoryIcon = [AppIcons.psix, AppIcons.kardiol, AppIcons.nevro];
  final categoryName = ['Psixologiya', 'Kardiologiya', 'Nevrologiya'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.stroke,
        appBar: AppBar(
          bottomOpacity: 1,
          elevation: 1,
          backgroundColor: AppColors.white,
          shadowColor: const Color(0xFF000000)
              .withAlpha(0)
              .withBlue(16)
              .withOpacity(0.16),
          toolbarHeight: 150,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    AppIcons.logo1,
                    height: 50,
                  ),
                  SvgPicture.asset(AppIcons.notification)
                ],
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Padding(
                padding: EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
                child: CupertinoTextField(
                  placeholder: "Ilmiy maqolalarni izlash",
                  autofocus: true,
                  prefix: SvgPicture.asset(AppIcons.search),
                  cursorHeight: 23,
                  autocorrect: false,
                  decoration: BoxDecoration(
                    color: Color(0xFFECEDF0),
                  ),
                )),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(CupertinoPageRoute(builder: (_) => MyWidget()));
                    },
                    child: Column(
                      children: [
                        Text("Turkumlar"),
                        SizedBox(
                          height: 170,
                          child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                height: 20,
                                width: 180,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF000000).withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: Offset(2, 2),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(4)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Gap(16),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child:
                                          SvgPicture.asset(categoryIcon[index]),
                                    ),
                                    const Gap(15),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        categoryName[index],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Barwol",
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        ...List.generate(
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
                        ),
                      ],
                    ),
                  ),
                ),
            itemCount: 1),
      ),
    );
  }
}
