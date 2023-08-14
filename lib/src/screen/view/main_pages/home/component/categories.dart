
import 'package:flutter/material.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';


class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) =>
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  KText(text: "Apparel",color: BrandColors.greyColor,)

                ],
              ),
            ),
          ),);
  }
}