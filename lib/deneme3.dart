import 'package:flutter/material.dart';
import '../view/pages/detail_page/knowledge_detail_page.dart';

Widget makeHomeItem({context, name, index}) {
  List<Color> itemColors = [
    const Color.fromRGBO(96, 125, 139, 1.0),  // blueGrey[300]
    const Color.fromRGBO(84, 110, 122, 1.0),   // blueGrey[400]
    // İhtiyaca göre istediğiniz kadar renk ekleyebilirsiniz
  ];

  // Belirli bir indeksteki renk listesinden renk seçilir
  Color itemColor = itemColors[index % itemColors.length];
  return ListTile(
      title: Center(
        child: Container(
          width: 330.0,
          height: 45,
          padding: const EdgeInsets.fromLTRB(7.0, 8.0, 8.0, 7.0),
          decoration: BoxDecoration(
              color: itemColor,
              borderRadius: BorderRadius.circular(17)),
          child: Padding(
            padding: const EdgeInsets.only(right:28, left: 38),
            child: Row(
                children: [
                  Container(
                    width: 210,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PetitFormal"),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.black38,
                  ),
                ]),
          ),
        ),
      ),
      onTap: () async {
      //  Navigator.push(
      //      context,
       //     MaterialPageRoute(
       //         builder: (context) => KnowledgeDetailPage()));
              }
  );
}
