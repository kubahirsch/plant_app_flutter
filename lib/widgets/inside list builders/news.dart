import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  final List listOfContent = [
    [
      'https://www.leroymerlin.pl/files/fs-upload/fckeditor/image/Podlewanie.jpg',
      '#Bratki, Arbuzy, Jabłoń, Gruszki',
      '#Hortensje, Ananasy, Banany',
      'Jak kwitną grudniki z sadzonek ?',
      'Lorem ipsum dolor sit amet, consectetur adipiskjansdlkfjnaslkjdnflaknalkjsndflkjansdlkfjnaslkdjfnalksjdnflkajsndflkjansdlkjfnalksjndflkajnsdlfkjnaslkjdfndalskjdnfalksjdnflaksjndfalksjdfnaslkdfjnjsndflkjansldkjfnalksjdndflkajsndflakjsndflkjncing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n',
    ],
    [
      'https://www.leroymerlin.pl/files/fs-upload/fckeditor/image/Podlewanie.jpg',
      '#Bratki, Arbuzy, Jabłoń, Gruszki',
      '#Hortensje, Ananasy, Banany',
      'Jak kwitną grudniki z sadzonek ?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n',
    ],
    [
      'https://www.leroymerlin.pl/files/fs-upload/fckeditor/image/Podlewanie.jpg',
      '#Bratki, Arbuzy, Jabłoń, Gruszki',
      '#Hortensje, Ananasy, Banany',
      'Jak kwitną grudniki z sadzonek ?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n',
    ],
    [
      'https://www.leroymerlin.pl/files/fs-upload/fckeditor/image/Podlewanie.jpg',
      '#Bratki, Arbuzy, Jabłoń, Gruszki',
      '#Hortensje, Ananasy, Banany',
      'Jak kwitną grudniki z sadzonek ?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis ',
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: listOfContent.length,
      itemBuilder: ((context, index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          height: 100,
          width: 310,
          margin: const EdgeInsets.only(right: 3),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  width: 120,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          listOfContent[index][0],
                          width: 120,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        listOfContent[index][1],
                        style: TextStyle(fontSize: 10),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        listOfContent[index][2],
                        style: const TextStyle(fontSize: 10),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(listOfContent[index][3]),
                        const SizedBox(
                          height: 25,
                        ),
                        Flexible(
                          child: Text(
                            listOfContent[index][4],
                            style: const TextStyle(fontSize: 10),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Image.network(
                              'https://yt3.ggpht.com/ytc/AMLnZu-Wqovf_OTzXfnpOFTNFdAj91syeynd_y7zk_aO=s48-c-k-c0x00ffffff-no-rj',
                              height: 15,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
