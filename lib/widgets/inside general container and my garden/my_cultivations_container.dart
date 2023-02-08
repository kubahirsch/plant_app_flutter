import 'package:flutter/material.dart';
import 'package:zielonepogotowie/widgets/inside%20list%20builders/cultivation.dart';

class MyCultivationsContainer extends StatefulWidget {
  const MyCultivationsContainer({super.key});

  @override
  State<MyCultivationsContainer> createState() =>
      _MyCultivationsContainerState();
}

class _MyCultivationsContainerState extends State<MyCultivationsContainer> {
  final List myCultivations = [
    [
      'Borówka \nAmerykańska',
      'https://drzewkaowocowe24.pl/wp-content/uploads/2017/05/borowka-amerykanska.jpg',
      true,
    ],
    [
      'Borówka \nAmerykańska',
      'https://drzewkaowocowe24.pl/wp-content/uploads/2017/05/borowka-amerykanska.jpg',
      false,
    ],
    [
      'Borówka \nAmerykańska',
      'https://drzewkaowocowe24.pl/wp-content/uploads/2017/05/borowka-amerykanska.jpg',
      false,
    ],
    [
      'Borówka \nAmerykańska',
      'https://drzewkaowocowe24.pl/wp-content/uploads/2017/05/borowka-amerykanska.jpg',
      false,
    ],
    [
      'Borówka \nAmerykańska',
      'https://drzewkaowocowe24.pl/wp-content/uploads/2017/05/borowka-amerykanska.jpg',
      false,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: myCultivations.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return CultivationTab(
          cultivationName: myCultivations[index][0],
          imgUrl: myCultivations[index][1],
          isActive: myCultivations[index][2],
        );
      }),
    );
  }
}
