import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utilities/colors.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme_blue , // เพิ่มสีเหลืองไล่สี
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/pair_pare.jpg"
                    )
                  )
                ),
              ),
              Gap(AppLayout.getHeight(40)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your Journey", style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(2)),
                  Text("Thailand", style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500
                  )),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: theme_blue
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3) ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme_blue
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          )
                        )
                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  const Text("Premium Status", style: const TextStyle(
                    color: white_status,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}