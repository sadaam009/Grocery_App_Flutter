import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          toolbarHeight: 50,
          title: Text(
            "My Cart",
            style: GoogleFonts.notoSerif(fontSize: 25),
          ),
        ),
        body: Consumer<Cart_Model>(builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: value.cartitems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 238, 229),
                              borderRadius: BorderRadius.circular(12)),
                          child: ListTile(
                            leading: Image.asset(value.cartitems[index][2]),
                            title: Text(value.cartitems[index][0]),
                            subtitle: Text(value.cartitems[index][1]),
                            trailing: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: () => Provider.of<Cart_Model>(
                                        context,
                                        listen: false)
                                    .removeItemfromCart(index)),
                          ),
                        ),
                      );
                    }),
              ),
              //Total Pay Now

              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Total Price:",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(163, 255, 255, 255),
                            ),
                          ),
                          Text(
                            "\$" + value.CalculateToltal(),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: EdgeInsets.all(13),
                          child: const Text(
                            "Pay Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }));
  }
}
