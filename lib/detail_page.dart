import 'package:flutter/material.dart';

import 'models/card_item.dart';
import 'widgets/text_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.item,
  });

  final CardItem item;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // * This page mainly have a column with three containers
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(top: 10),
            color: Colors.blueAccent.withOpacity(0.2),
            child: Column(
              children: [
                // * First Contaiiner -----------------------
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff02B1F4),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 5,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  text: widget.item.date,
                                  color: const Color(0xff02B1F4),
                                  fontSize: 25,
                                ),
                                TextWidget(
                                  text: 'Prix: ${widget.item.prix}',
                                  color: const Color(0xff02B1F4),
                                  fontSize: 15,
                                )
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.only(top: 15, bottom: 10),
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextWidget(
                                        text: widget.item.heureDebut,
                                        fontSize: 25,
                                        color: const Color(0xff5B8091),
                                      ),
                                      TextWidget(
                                        text: widget.item.heureFin,
                                        fontSize: 25,
                                        color: const Color(0xff5B8091),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    color: const Color(0xff5B8091),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    width: 5,
                                    height: 85,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: widget.item.fname,
                                        color: const Color(0xff5B8091),
                                      ),
                                      TextWidget(
                                        text: widget.item.lname,
                                        color: const Color(0xff5B8091),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget(
                                  text: 'Nombre de places libres :',
                                  color: Color(0xff5B8091),
                                  fontSize: 16,
                                ),
                                TextWidget(
                                  text: '${widget.item.ratio}',
                                  color: const Color(0xff5B8091),
                                  fontSize: 25,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // * second Contaiiner -----------------------
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                        text: 'Prix:',
                        color: Color(0xff02B1F4),
                        fontSize: 20,
                      ),
                      TextWidget(
                        text: widget.item.prix,
                        color: const Color(0xff02B1F4),
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
                // * Third Contaiiner -----------------------
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 15,
                    ),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    TextWidget(
                                      text: widget.item.name,
                                      color: const Color(0xff5B8091),
                                      fontSize: 16,
                                    ),
                                    const SizedBox(width: 10),
                                    const CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.green),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.blueAccent.withOpacity(0.5),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.blueAccent.withOpacity(0.5),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.blueAccent.withOpacity(0.5),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.blueAccent.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      const CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Color(0xff00B1F5),
                                      ),
                                      CircleAvatar(
                                        radius: 26,
                                        backgroundImage: AssetImage(
                                          widget.item.imageUrl,
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor:
                                                  Color(0xff00B1F5),
                                            ),
                                            Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_right_sharp,
                                    color: Color(0xff00B1F5),
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.5,
                          color: Color(0xff5B8091),
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: 'Point de depart:',
                                  color: Color(0xff5B8091),
                                  fontSize: 16,
                                ),
                                SizedBox(height: 15),
                                TextWidget(
                                  text: 'Point de destination:',
                                  color: Color(0xff5B8091),
                                  fontSize: 16,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextWidget(
                                  text: widget.item.fname,
                                  color: const Color(0xff5B8091),
                                  fontSize: 14,
                                ),
                                const SizedBox(height: 15),
                                TextWidget(
                                  text:
                                      '${widget.item.lname} ${widget.item.agenceName}',
                                  color: const Color(0xff5B8091),
                                  fontSize: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.5,
                          color: Color(0xff5B8091),
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextWidget(
                              text: 'Preference:',
                              color: Color(0xff5B8091),
                              fontSize: 16,
                            ),
                            TextWidget(
                              text: '${widget.item.preference}',
                              color: const Color(0xff5B8091),
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 90, vertical: 20),
                            decoration: BoxDecoration(
                                color: const Color(0xff00B1F5),
                                borderRadius: BorderRadius.circular(50)),
                            child: const TextWidget(
                              text: 'Reserver',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
