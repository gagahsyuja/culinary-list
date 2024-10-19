import 'package:flutter/material.dart';
import 'package:culinary_list/makanan.dart';
import 'package:culinary_list/styles.dart';

class DetailPage extends StatelessWidget {
    
    final Makanan makanan;

    const DetailPage({super.key, required this.makanan});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: pageBgColor,
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        Stack(
                            children: [
                                Center(
                                    child: Hero(
                                        tag: makanan.gambar,
                                        child: Image.asset(
                                            makanan.gambar,
                                            scale: 0.5
                                        )
                                    ),
                                ),
                                SafeArea(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                CircleAvatar(
                                                    backgroundColor: headerBackColor,
                                                    child: IconButton(
                                                        icon: const Icon(
                                                            Icons.arrow_back,
                                                            color: pageBgColor
                                                        ),
                                                        onPressed: () {
                                                            Navigator.pop(context);
                                                        }
                                                    )
                                                ),
                                                const FavoriteButton()
                                            ]
                                        )
                                    )
                                ),
                            ]
                        ),
                        Container(
                            color: headerBackColor,
                            padding: EdgeInsets.all(10),
                            child: Text(
                                makanan.nama,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: pageBgColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none
                                )
                            )
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                Column
                                (
                                    children: [
                                        Icon
                                        (
                                            Icons.access_time_filled,
                                            color: Colors.yellow
                                        ),
                                        Text
                                        (
                                            makanan.waktuBuka,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none
                                            )
                                        )
                                    ]
                                ),
                                Column
                                (
                                    children: [
                                        Icon(
                                            Icons.local_fire_department,
                                            color: Colors.red
                                        ),
                                        Text
                                        (
                                            makanan.kalori,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none
                                            )
                                        )
                                    ]
                                ),
                                Column
                                (
                                    children: [
                                        Icon(
                                            Icons.monetization_on,
                                            color: Colors.green
                                        ),
                                        Text
                                        (
                                            makanan.harga,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none
                                            )
                                        ),
                                    ]
                                ),
                            ]
                        ),
                        Container
                        (
                            padding: EdgeInsets.all(10),
                            child: Text
                            (
                                makanan.detail,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center
                            ),
                        ),
                        SizedBox
                        (
                            height: 100,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: makanan.gambarLain.map((image) {
                                    return Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(image)
                                        )
                                    );
                                }).toList()
                            )
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Text(
                            "Bahan Racikan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: headerBackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                            ),
                        ),
                        SizedBox(
                            height: 20
                        ),
                        Container
                        (
                            height: 100,
                            child: ListView.separated(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(40)
                                    ),
                                    child: Column(
                                        children: [
                                            Image.asset(
                                                makanan.bahan[index].values.first,
                                                width: 52
                                            ),
                                            Text(makanan.bahan[index].keys.first)
                                        ]
                                    )
                                ),
                                separatorBuilder: (_, index) => SizedBox(
                                    width: 15
                                ),
                                itemCount: makanan.bahan.length
                            )
                        ),
                        SizedBox(height: 50)
                    ]
                ),
            )
        );
    }
}

class FavoriteButton extends StatefulWidget {
    const FavoriteButton({super.key});

    @override
    State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
    bool isFavorite = false;

    @override
    Widget build(BuildContext context) {
        return CircleAvatar(
            backgroundColor: headerBackColor,
            radius: 22,
            child: IconButton(
                icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                    size: 30
                ),
                onPressed: () {
                    setState(() {
                        isFavorite = !isFavorite;
                    });
                }
            )
        );
    }
}
