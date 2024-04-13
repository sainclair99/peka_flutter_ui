import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peka_flutter_ui/widgets/text_widget.dart';

import '../detail_page.dart';
import '../models/card_item.dart';

class CardCustomWidget extends StatelessWidget {
  const CardCustomWidget({
    super.key,
    required this.item,
  });

  final CardItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return DetailPage(item: item);
            },
          ),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.only(
          left: 12,
          top: 8,
          bottom: 8,
          right: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(-2, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff02B1F4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8),
                      child: TextWidget(text: item.date),
                    ),
                  ),
                ),
                Text(
                  'Prix: ${item.prix}',
                  style: const TextStyle(
                    color: Color(0xff02B1F4),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: item.heureDebut,
                          color: const Color(0xff6C8494),
                        ),
                        TextWidget(
                          text: item.heureFin,
                          color: const Color(0xff6C8494),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                          Expanded(
                            child: Container(
                              color: const Color(0xff6C8494),
                              width: 2,
                            ),
                          ),
                          const CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: item.fname,
                          color: const Color(0xff6C8494),
                        ),
                        TextWidget(
                          text: item.lname,
                          color: const Color(0xff6C8494),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(item.imageUrl),
                ),
                const SizedBox(width: 10),
                TextWidget(
                  text: item.name,
                  color: const Color(0xff676B6D),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
