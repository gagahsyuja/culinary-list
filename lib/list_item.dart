import 'package:flutter/material.dart';
import 'package:culinary_list/makanan.dart';
import 'package:culinary_list/detail_page.dart';

class ListItem extends StatelessWidget {

  final Makanan makanan;

  const ListItem({super.key, required this.makanan});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage(makanan: makanan))
            );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: const BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 178, 178, 178),
                  offset: Offset(1.0, 2.0),
                  blurRadius: 6.0
                  )
              ],
              ),
          height: 100,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Hero(
                    tag: makanan.gambar,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image(
                            image: AssetImage(makanan.gambar),
                            height: 75,
                            width: 75,
                            fit: BoxFit.cover
                        )
                        // fit: BoxFit.contain
                    )
                ),
                const SizedBox(
                  width: 10
                ),
                Expanded(
                    child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        makanan.nama,
                          style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      Text(
                        makanan.deskripsi,
                           style: const TextStyle(
                              fontWeight: FontWeight.normal,
                           ),
                           overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                           makanan.harga,
                           style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54
                           ),
                           overflow: TextOverflow.ellipsis
                      )
                    ]
                  )
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.food_bank,
                    color: Colors.orange
                  )
                )
              ]
            )
        )
      );
    }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Image.asset(
  //           makanan.gambar,
  //           height: 75,
  //           width: 75
  //         ),
  //         SizedBox(width: 10),
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               makanan.nama,
  //               style: TextStyle(
  //                 fontSize: 30,
  //                 fontWeight: FontWeight.bold
  //               )
  //             ),
  //             Text(
  //               makanan.deskripsi,
  //               style: TextStyle(
  //                 fontWeight: FontWeight.w500
  //               )
  //             )
  //           ]
  //         )
  //       ]
  //     )
  //   );
  // }
}
