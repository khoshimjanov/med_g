// import 'package:flutter/material.dart';

// class SingleArticle extends StatefulWidget {
//   const SingleArticle({super.key});

//   @override
//   State<SingleArticle> createState() => _SingleArticleState();
// }

// class _SingleArticleState extends State<SingleArticle> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:  SliverAppBar(
//       ),
//       body:Container(child: Column(),) ,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:med_g/assets/images.dart';
// import 'package:med_project/assets/images.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                AppImages.appBar,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return Container(
                  child: Column(
                    children: [
                      Text("Kunlik badantarbiyaning foydalari"),
                      Text("Kardiologiya / 12.04.2022y"),
                      Text(
                          """Tadqiqotlarga ko‘ra, XIX asrning ikkinchi yarmi va XX asr boshlarida ma'rifatparvar ajdodlarimiz yaratgan pedagogik asarlarning aksariyatida bolani jismoniy jihatdan sog‘lom etib tarbiyalashga alohida e'tibor qaratilgan.

Jumladan, bu borada Abdurauf Fitratning ijtimoiy tarbiya negizida jismoniy tarbiyani tashkil etish, shaxsni salomat va baquvvat etib tarbiyalash masalalariga oid qarashlari diqqatga molikdir. Uning «Rahbari najot» asarining «Bola tarbiyasi» nomli bobida shunday deyiladi: «Badan tarbiyasiga qadim zamonlardan boshlab katta ahamiyat berilgan. Insonning butun a'zosi salomat va quvvatga ega bo‘lmasa, unda inson uzoq yashamaydi. Agar insonning tanasidagi a'zolaridan biriga xalal tegsa, u kishi ishdan qo‘lini tortib, boshqalarning muhtojiga aylanadi».

Hamma ham sog‘lom, tetik va baquvvat bo‘lishga, o‘z yoshligi, husni hamda ishchanlik qobiliyatini saqlashga harakat qiladi. Bunga erishishning asosiy omillaridan biri jismoniy harakat sanaladi."""),
                    ],
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
