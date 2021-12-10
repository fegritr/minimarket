import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text(
              'My Cart',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.purple[100]),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Aqua Galon 12 L'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Qty : 2 Galon')
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.do_not_disturb_on_outlined)),
                            SizedBox(
                              width: 2,
                            ),
                            Text('5'),
                            SizedBox(
                              width: 2,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_circle_outline))
                          ],
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    ));
  }
}
