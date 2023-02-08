import 'package:flutter/material.dart';
import 'package:zielonepogotowie/widgets/general_container.dart';
import 'package:zielonepogotowie/widgets/inside%20general%20container%20and%20my%20garden/image_slide_show.dart';
import 'package:zielonepogotowie/widgets/inside%20list%20builders/news.dart';
import 'package:zielonepogotowie/widgets/my_garden.dart';
import 'package:zielonepogotowie/widgets/weather_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WeatherBar(),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              MyGarden(),
              GeneralContainer(
                header: 'Ważne w tym miesiącu',
                smallHeader: 'Interesujące treści dla każdego',
                child: News(),
              ),
              GeneralContainer(
                header: 'Treści promocyjne',
                smallHeader: 'Zobacz co przygotowaliśmy dla Ciebie aktualnie',
                child: ImageSlideShow(),
              ),
              GeneralContainer(
                header: 'Rekomendowane',
                smallHeader: 'Posty dotyczące Twoich zainteresowań',
                child: News(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
