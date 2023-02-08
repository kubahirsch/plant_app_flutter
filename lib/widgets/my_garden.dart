import 'package:flutter/material.dart';
import 'package:zielonepogotowie/widgets/inside%20general%20container%20and%20my%20garden/my_cultivations_container.dart';
import 'package:zielonepogotowie/widgets/inside%20general%20container%20and%20my%20garden/custom_navigation_tab.dart';
import 'package:zielonepogotowie/widgets/inside%20general%20container%20and%20my%20garden/summary_container.dart';

class MyGarden extends StatefulWidget {
  const MyGarden({super.key});

  @override
  State<MyGarden> createState() => _MyGardenState();
}

class _MyGardenState extends State<MyGarden> {
  final List myGardenConsts = [
    ['Podsumowanie', true],
    ['Moje uprawy', false],
  ];

  void changeMyGardenConst(index) {
    setState(() {
      for (int i = 0; i < myGardenConsts.length; i++) {
        myGardenConsts[i][1] = false;
      }
      myGardenConsts[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Mój ogród',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(
              Icons.calendar_today_outlined,
              size: 27,
            ),
            SizedBox(width: 15),
            Text(
              'LISTOPAD',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Wykonuj regularnie zadania i ciesz się pięknym i zadbanym ogrodem',
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: myGardenConsts.length,
            itemBuilder: ((context, index) {
              return CustomNavigationTab(
                isActive: myGardenConsts[index][1],
                onTap: () {
                  changeMyGardenConst(index);
                },
                text: myGardenConsts[index][0],
              );
            }),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: myGardenConsts[0][1]
              ? const SummaryContainer()
              : const MyCultivationsContainer(),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
