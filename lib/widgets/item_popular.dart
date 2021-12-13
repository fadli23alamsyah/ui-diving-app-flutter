import 'package:diving_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class ItemPopular extends StatelessWidget {
  const ItemPopular({ Key? key, required this.title, required this.subTitle}) : super(key: key);
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (builder)=> const DetailScreen()));
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.only(top: 5,bottom: 15, right: 20),
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.3),
              blurRadius: 10,
              offset: const Offset(3, 6)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/tsukasa-chan.jpg",
                height: 150,
                width: MediaQuery.of(context).size.width * 0.6,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        subTitle!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}