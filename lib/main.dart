import 'package:ecom_app/utils/globle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyShop(),
    ),
  );
}

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    width: 170,
                    height: 45,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            "Select category...",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: allProducts.map((e) {
                        List Data = e['catagoryProducts'];
                        return Container(
                          height: 555,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                      height: 40,
                                      child: Text(
                                        "${e['catagory']}",
                                        style: const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ...Data.map(
                                            (e) {
                                              return Container(
                                                margin: const EdgeInsets.only(
                                                  right: 30,
                                                  bottom: 50,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: const <BoxShadow>[
                                                    BoxShadow(
                                                      color: Colors.grey,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],
                                                ),
                                                width: 220,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    15),
                                                            topRight:
                                                                Radius.circular(
                                                                    15),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    15),
                                                          ),
                                                          color: Colors.white,
                                                        ),
                                                        child: Align(
                                                          child: Column(
                                                            children: [
                                                              Expanded(
                                                                flex: 3,
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image:
                                                                          NetworkImage(
                                                                        "${e['thumbnail']}",
                                                                      ),
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .vertical(
                                                                      top: Radius
                                                                          .circular(
                                                                              20),
                                                                      bottom: Radius
                                                                          .circular(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child:
                                                                      Container(
                                                                    height: 30,
                                                                    width: 60,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      color: Colors
                                                                          .red,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(20),
                                                                        bottomRight:
                                                                            Radius.circular(20),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "${e['disscount']}%",
                                                                      style:
                                                                          const TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 1,
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(10),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "${e['name']}",
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        "₹ ${e['price']}",
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      RatingBar
                                                                          .builder(
                                                                        itemSize:
                                                                            18,
                                                                        initialRating:
                                                                            double.parse("${e['rating']}"),
                                                                        minRating:
                                                                            1,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        allowHalfRating:
                                                                            true,
                                                                        itemCount:
                                                                            5,
                                                                        itemPadding:
                                                                            const EdgeInsets.symmetric(horizontal: 2.0),
                                                                        itemBuilder:
                                                                            (context, i) =>
                                                                                const Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              Colors.amber,
                                                                        ),
                                                                        onRatingUpdate:
                                                                            (rating) {},
                                                                        ignoreGestures:
                                                                            true,
                                                                        glow:
                                                                            false,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
