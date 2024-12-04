import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/page/cart_page.dart';
import 'package:provider/provider.dart';
import 'Components/grocery_item.dart';
import 'model/cart_model.dart';

class intro_page extends StatelessWidget {
  const intro_page({super.key});
  @override
  Widget build(BuildContext context) {
    return content(context);
  }

  Widget content(context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const CartPage();
          }),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        focusColor: Colors.white,
        child: const Icon(Icons.shopping_bag, color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Subax Wannaagsan",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Macamiil Dalbo Qudaar Hada Lasoo Guray. ",
              style: GoogleFonts.notoSerif(fontSize: 35, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Qudaar Nadiif Ah"),
          ),
          Expanded(
            child: Consumer<Cart_Model>(builder: (context, value, child) {
              return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  itemBuilder: (context, index) {
                    return GroceryItem(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () => {
                        Provider.of<Cart_Model>(context, listen: false)
                            .addItemtoCart(index),
                      },
                    );
                  });
            }),
          )
        ],
      )),
    );
  }
}
