import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:med_g/assets/colors.dart';
import 'package:med_g/assets/icons.dart';
import 'package:med_g/features/profile/presentation/widgets/about.dart';
import 'package:med_g/features/profile/presentation/widgets/profile_images.dart';
import 'package:med_g/features/profile/presentation/widgets/support.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(

            onTap: () {
              
              Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfileImage())); 


            },
            child: ListTile(
              hoverColor: Colors.grey,
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.dark,
                child: SvgPicture.asset(
                  '',
                ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Jasur Jaxongirov',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '+998 99 474 66 28',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Gap(30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: GestureDetector(
                  onTap: () {


                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutMedG()));


                    print("medg");
                  },
                  child: Container(
                      width: 150,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white38,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(AppIcons.medg, fit: BoxFit.cover),
                          SizedBox(
                            width: 12,
                          ),
                          Text('MedG haqida',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: GestureDetector(
                  onTap: () {

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Support()));


                    print("qo'llab quvatlash");
                  },
                  child: Container(
                      width: 150,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white38,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(AppIcons.qollash,
                              fit: BoxFit.cover),
                          SizedBox(
                            width: 12,
                          ),
                          Text("Qo'llab-\n quvatlash",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      )),
                ),
              ),
            ],

          ),
          Gap(50),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListTile(
                hoverColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),
                leading: SvgPicture.asset(AppIcons.logouts),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 24, color: AppColors.red),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
