import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceryItem extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;
  GroceryItem(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: color[200], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              imagePath,
              height: 100,
            ),

            //itemname
            Text(
              itemName,
              style: GoogleFonts.notoSerif(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            // Price + button
            MaterialButton(
                onPressed: onPressed,
                color: color[800],
                child: Text('\$' + itemPrice,
                    style: GoogleFonts.notoSerif(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20)))
          ],
        ),
      ),
    );
  }
}
