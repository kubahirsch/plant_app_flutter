import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zielonepogotowie/widgets/inside%20general%20container%20and%20my%20garden/custom_navigation_tab.dart';
import 'package:zielonepogotowie/widgets/inside%20list%20builders/blog_container.dart';

class KnowladgePage extends StatefulWidget {
  const KnowladgePage({super.key});

  @override
  State<KnowladgePage> createState() => _KnowladgePageState();
}

class _KnowladgePageState extends State<KnowladgePage> {
  List tabs = [
    ['Pielęgnacja i Ochrona', true],
    ['Publikacje', false],
  ];

  changeTab(index) {
    setState(() {
      for (int i = 0; i < tabs.length; i++) {
        tabs[i][1] = false;
      }

      tabs[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: ((context, index) {
              return CustomNavigationTab(
                onTap: () {
                  changeTab(index);
                },
                text: tabs[index][0],
                isActive: tabs[index][1],
              );
            }),
          ),
        ),
        tabs[0][1] ? const CareAndSecurity() : const Publications()
      ],
    );
  }
}

class CareAndSecurity extends StatefulWidget {
  const CareAndSecurity({super.key});

  @override
  State<CareAndSecurity> createState() => _CareAndSecurityState();
}

class _CareAndSecurityState extends State<CareAndSecurity> {
  List posts = [
    [
      'QKBuA-x478c',
      'Jak kwitną grudniki z sadzonek',
      'anslkjdhfbnaljkhsbdfljhabsdlfjhbaskjhdfbaljwhbsefljhbasleiyfbaluywsbefluyabseliyfbaisuebnfiuabsleifubalisebfliuabselifubasliuebfasef',
    ],
    [
      'QKBuA-x478c',
      'Jak kwitną grudniki z sadzonek',
      'anslkjdhfbnaljkhsbdfljhabsdlfjhbaskjhdfbaljwhbsefljhbasleiyfbaluywsbefluyabseliyfbaisuebnfiuabsleifubalisebfliuabselifubasliuebfasef',
    ],
    [
      'QKBuA-x478c',
      'Jak kwitną grudniki z sadzonek',
      'anslkjdhfbnaljkhsbdfljhabsdlfjhbaskjhdfbaljwhbsefljhbasleiyfbaluywsbefluyabseliyfbaisuebnfiuabsleifubalisebfliuabselifubasliuebfasef',
    ],
    [
      'QKBuA-x478c',
      'Jak kwitną grudniki z sadzonek',
      'anslkjdhfbnaljkhsbdfljhabsdlfjhbaskjhdfbaljwhbsefljhbasleiyfbaluywsbefluyabseliyfbaisuebnfiuabsleifubalisebfliuabselifubasliuebfasef',
    ],
    [
      'QKBuA-x478c',
      'Jak kwitną grudniki z sadzonek',
      'anslkjdhfbnaljkhsbdfljhabsdlfjhbaskjhdfbaljwhbsefljhbasleiyfbaluywsbefluyabseliyfbaisuebnfiuabsleifubalisebfliuabselifubasliuebfasef',
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: const [
              Icon(
                Icons.calendar_today,
                size: 40,
              ),
              SizedBox(width: 10),
              Text(
                'LISTOPAD',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(width: 15),
              Icon(
                Icons.arrow_right,
                size: 40,
              ),
            ],
          ),
          const SizedBox(height: 20),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: posts.length,
            itemBuilder: ((context, index) {
              return BlogContainer(
                youtubeVideoId: posts[index][0],
                title: posts[index][1],
                content: posts[index][2],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class Publications extends StatelessWidget {
  const Publications({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            height: 130,
            margin: const EdgeInsets.only(bottom: 20),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: 80,
                    child: Image.network(
                      'https://i0.wp.com/zielonepogotowie.blog/wp-content/uploads/2017/06/4.jpg?resize=1360%2C765&ssl=1',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tytuł',
                            style: TextStyle(fontSize: 17),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            'jakas dluga trescajnsdlfkjansldkjfnalksjnbdflkjahbsdlfkjbasldbflausbdflibalsiujdfliuiabsdliufbalsbdfliabsliudfbaliusbdfaubsdfiub',
                            style: TextStyle(fontSize: 10),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Spacer(),
                              SizedBox(
                                height: 20,
                                width: 90,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.picture_as_pdf,
                                        size: 12,
                                      ),
                                      Text(
                                        'Czytaj PDF',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
