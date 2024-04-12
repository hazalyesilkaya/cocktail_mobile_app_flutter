import 'package:flutter/material.dart';
import '../models/knowledge_model.dart';
import '../view/pages/detail_page/knowledge_detail_page.dart';

Widget knowledgeItems({title, description, knowledgeList}) {
  return  SafeArea(
    child: Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          itemExtent: 54,
          itemBuilder: (context, index) {
            List<Color> itemColors = [
              const Color.fromRGBO(116, 145, 159, 1.0),  // Açık blueGrey[300]
              const Color.fromRGBO(96, 125, 139, 1.0),  // blueGrey[300]
              // Color.fromRGBO(255, 250, 240, 1.0),
              // Color.fromRGBO(240, 240, 230, 1.0)
            ];

            // Belirli bir indeksteki renk listesinden renk seçilir
            Color itemColor = itemColors[index % itemColors.length];
            return ListTile(
                title: Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 342.0,
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
                    decoration: BoxDecoration(
                        color: itemColor,
                        borderRadius: BorderRadius.circular(17),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],),
                    child: Padding(
                      padding: const EdgeInsets.only(right:42, left: 42),
                      child: Row(
                          children: [
                            Container(
                              width: 210,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                title[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "PlayBall"),
                              ),
                            ),
                            const Icon(
                              Icons.search,
                              color: Colors.white60,
                            ),
                          ]),
                    ),
                  ),
                ),
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KnowledgeDetailPage(
                              model: KnowledgeModel(
                                  title: title[index],
                                  description: description[index],
                                id: knowledgeList[index].id
                              )
                          )));}
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    ),
  );
}
