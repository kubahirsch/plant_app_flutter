// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BlogContainer extends StatelessWidget {
  final String youtubeVideoId;
  final String title;
  final String content;

  const BlogContainer({
    Key? key,
    required this.youtubeVideoId,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://img.youtube.com/vi/${youtubeVideoId}/0.jpg',
                  ),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 45,
                    height: 30,
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://yt3.ggpht.com/ytc/AMLnZu-Wqovf_OTzXfnpOFTNFdAj91syeynd_y7zk_aO=s48-c-k-c0x00ffffff-no-rj',
                      width: 18,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      child: Text(
                        content,
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
