import 'package:flutter/material.dart';
import 'package:culinary_list/styles.dart';
import 'package:culinary_list/list_item.dart';
import 'package:culinary_list/makanan.dart';

class HomePage extends StatelessWidget {

    const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                const SizedBox(height: 30),
                const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.list_alt_sharp, size: 30),
                    SizedBox(width: 10),
                    Text('List Kuliner', style: textHeader1)
                ]),
                const SizedBox(height: 10),
                Expanded(
                    child: ListView.builder(
                        itemCount: listMakanan.length,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                            return ListItem(makanan: listMakanan[index]);
                        }
                    )
                )
                ]
            );
    }
}

//        return ListView(
//          padding: EdgeInsets.all(10),
//          children: [
//            const SizedBox(height: 20),
//            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//              Icon(Icons.list_alt_sharp, size: 30),
//              SizedBox(width: 10),
//              Text('List Kuliner', style: textHeader1)
//            ]),
//            Padding(padding: EdgeInsets.only(bottom: 20)),
//            Container(
//              margin: EdgeInsets.symmetric(vertical: 8),
//              decoration: BoxDecoration(
//                color: Colors.white,
//                borderRadius: BorderRadius.all(Radius.circular(10)),
//                boxShadow: [
//                  BoxShadow(
//                    color: Color.fromARGB(255, 178, 178, 178),
//                    offset: Offset(1.0, 2.0),
//                    blurRadius: 6.0
//                  )
//                ],
//              ),
//              height: 100,
//              padding: EdgeInsets.symmetric(
//                horizontal: 15,
//                vertical: 10
//              ),
//              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: [
//                  Container(
//                    width: 85,
//                    height: 75,
//                    color: Colors.grey
//                  ),
//                  SizedBox(
//                    width: 10
//                  ),
//                  Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      Text(
//                        "Title",
//                        style: TextStyle(
//                          fontSize: 30,
//                          fontWeight: FontWeight.bold
//                        )
//                      ),
//                      Text(
//                        "Sub Title",
//                        style: TextStyle(
//                          fontWeight: FontWeight.w500
//                        )
//                      )
//                    ]
//                  )
//                ]
//              )
//            )
//          ]
//        );
//      }
//    );
//  }
