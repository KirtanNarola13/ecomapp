import 'package:ecom_app/utils/globle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  int? dropDownValue;
  int start = 699;
  int end = 4599;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed('cart_page');
              });
            },
            splashRadius: 25,
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Men's Wear",
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
                  child: Column(
                    children: [
                      (dropDownValue == null)
                          ? Row(
                              children: [
                                DropdownButton(
                                  value: dropDownValue,
                                  hint: const Text("Select Catagory..."),
                                  items: allProducts.map((e) {
                                    return DropdownMenuItem(
                                      value: allProducts.indexOf(e),
                                      child: Text(e['catagory']),
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      dropDownValue = val;
                                    });
                                  },
                                ),
                                Visibility(
                                  visible:
                                      (dropDownValue != null) ? true : false,
                                  child: ActionChip(
                                    label: const Row(
                                      children: [
                                        Icon(
                                          Icons.clear,
                                          size: 15,
                                        ),
                                        Text("clear"),
                                      ],
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        dropDownValue = null;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                DropdownButton(
                                  value: dropDownValue,
                                  hint: const Text("Select Catagory..."),
                                  items: allProducts.map((e) {
                                    return DropdownMenuItem(
                                      value: allProducts.indexOf(e),
                                      child: Text(e['catagory']),
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      dropDownValue = val;
                                    });
                                  },
                                ),
                                Visibility(
                                  visible:
                                      (dropDownValue != null) ? true : false,
                                  child: ActionChip(
                                    label: const Row(
                                      children: [
                                        Icon(
                                          Icons.clear,
                                          size: 15,
                                        ),
                                        Text("clear"),
                                      ],
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        dropDownValue = null;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: (dropDownValue != null)
                                ? Container(
                                    margin: (dropDownValue != null)
                                        ? EdgeInsets.only(top: 5, bottom: 10)
                                        : EdgeInsets.zero,
                                    child: Visibility(
                                      visible: true,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              const Text(
                                                "From",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                "₹ $start",
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                          RangeSlider(
                                              activeColor: Colors.grey.shade700,
                                              inactiveColor: Colors.grey,
                                              values: RangeValues(
                                                  start.toDouble(),
                                                  end.toDouble()),
                                              max: 4599,
                                              min: 699,
                                              onChanged: (val) {
                                                setState(() {
                                                  start = val.start.toInt();
                                                  end = val.end.toInt();
                                                });
                                              }),
                                          Column(
                                            children: [
                                              const Text(
                                                "From",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                "₹ $end",
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Container(
                                    child: Visibility(
                                      visible: false,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              const Text(
                                                "From",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                "₹ $start",
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                          RangeSlider(
                                              values: RangeValues(
                                                  start.toDouble(),
                                                  end.toDouble()),
                                              max: 4599,
                                              min: 699,
                                              onChanged: (val) {
                                                setState(() {
                                                  start = val.start.toInt();
                                                  end = val.end.toInt();
                                                });
                                              }),
                                          Column(
                                            children: [
                                              const Text(
                                                "From",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                "₹ $end",
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: (dropDownValue != null) ? 5 : 9,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: allProducts.map((e) {
                        List Data = e['catagoryProducts'];
                        return (dropDownValue == null)
                            ? Container(
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
                                            margin: const EdgeInsets.fromLTRB(
                                                2, 0, 0, 0),
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
                                                    return GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                          'detail_page',
                                                          arguments: e,
                                                        );
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                          left: 5,
                                                          right: 25,
                                                          bottom: 50,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          boxShadow: const <BoxShadow>[
                                                            BoxShadow(
                                                              color:
                                                                  Colors.grey,
                                                              offset:
                                                                  Offset(0, 5),
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
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            15),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            15),
                                                                  ),
                                                                  color: Colors
                                                                      .white,
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
                                                                              fit: BoxFit.cover,
                                                                              image: NetworkImage(
                                                                                "${e['thumbnail']}",
                                                                              ),
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.vertical(
                                                                              top: Radius.circular(20),
                                                                              bottom: Radius.circular(20),
                                                                            ),
                                                                          ),
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                30,
                                                                            width:
                                                                                60,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              color: Colors.red,
                                                                              borderRadius: BorderRadius.only(
                                                                                topLeft: Radius.circular(20),
                                                                                bottomRight: Radius.circular(20),
                                                                              ),
                                                                            ),
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child:
                                                                                Text(
                                                                              "${e['disscount']}%",
                                                                              style: const TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 18,
                                                                                fontWeight: FontWeight.bold,
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
                                                                              const EdgeInsets.all(10),
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "${e['name']}",
                                                                                style: const TextStyle(
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                "₹ ${e['price']}",
                                                                                style: const TextStyle(
                                                                                  fontSize: 20,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                              ),
                                                                              RatingBar.builder(
                                                                                itemSize: 18,
                                                                                initialRating: double.parse("${e['rating']}"),
                                                                                minRating: 1,
                                                                                direction: Axis.horizontal,
                                                                                allowHalfRating: true,
                                                                                itemCount: 5,
                                                                                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                                                itemBuilder: (context, i) => const Icon(
                                                                                  Icons.star,
                                                                                  color: Colors.amber,
                                                                                ),
                                                                                onRatingUpdate: (rating) {},
                                                                                ignoreGestures: true,
                                                                                glow: false,
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
                              )
                            : (dropDownValue == allProducts.indexOf(e))
                                ? Container(
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
                                                    const EdgeInsets.fromLTRB(
                                                        2, 0, 0, 0),
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
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ...Data.map(
                                                      (e) {
                                                        return (e['price'] >=
                                                                    start &&
                                                                e['price'] <=
                                                                    end)
                                                            ? GestureDetector(
                                                                onTap: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pushNamed(
                                                                    'detail_page',
                                                                    arguments:
                                                                        e,
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    left: 5,
                                                                    right: 25,
                                                                    bottom: 50,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    boxShadow: const <BoxShadow>[
                                                                      BoxShadow(
                                                                        color: Colors
                                                                            .grey,
                                                                        offset: Offset(
                                                                            0,
                                                                            5),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  width: 220,
                                                                  child: Column(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              topLeft: Radius.circular(15),
                                                                              topRight: Radius.circular(15),
                                                                              bottomLeft: Radius.circular(15),
                                                                              bottomRight: Radius.circular(15),
                                                                            ),
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Expanded(
                                                                                  flex: 3,
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: NetworkImage(
                                                                                          "${e['thumbnail']}",
                                                                                        ),
                                                                                      ),
                                                                                      borderRadius: const BorderRadius.vertical(
                                                                                        top: Radius.circular(20),
                                                                                        bottom: Radius.circular(20),
                                                                                      ),
                                                                                    ),
                                                                                    alignment: Alignment.topLeft,
                                                                                    child: Container(
                                                                                      height: 30,
                                                                                      width: 60,
                                                                                      decoration: const BoxDecoration(
                                                                                        color: Colors.red,
                                                                                        borderRadius: BorderRadius.only(
                                                                                          topLeft: Radius.circular(20),
                                                                                          bottomRight: Radius.circular(20),
                                                                                        ),
                                                                                      ),
                                                                                      alignment: Alignment.center,
                                                                                      child: Text(
                                                                                        "${e['disscount']}%",
                                                                                        style: const TextStyle(
                                                                                          color: Colors.white,
                                                                                          fontSize: 18,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 1,
                                                                                  child: Container(
                                                                                    padding: const EdgeInsets.all(10),
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Column(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          "${e['name']}",
                                                                                          style: const TextStyle(
                                                                                            fontSize: 14,
                                                                                            fontWeight: FontWeight.w400,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          "₹ ${e['price']}",
                                                                                          style: const TextStyle(
                                                                                            fontSize: 20,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                        ),
                                                                                        RatingBar.builder(
                                                                                          itemSize: 18,
                                                                                          initialRating: double.parse("${e['rating']}"),
                                                                                          minRating: 1,
                                                                                          direction: Axis.horizontal,
                                                                                          allowHalfRating: true,
                                                                                          itemCount: 5,
                                                                                          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                                                          itemBuilder: (context, i) => const Icon(
                                                                                            Icons.star,
                                                                                            color: Colors.amber,
                                                                                          ),
                                                                                          onRatingUpdate: (rating) {},
                                                                                          ignoreGestures: true,
                                                                                          glow: false,
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
                                                                ),
                                                              )
                                                            : Container();
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
                                  )
                                : Container();
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
