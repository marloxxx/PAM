import 'package:delmart/shared/theme.dart';
import 'package:delmart/ui/widgets/custom_filled_button.dart';
import 'package:delmart/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: dark,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: dark,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // product image
                Container(
                  height: 218,
                  width: 311,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: softGray,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/images/product.png'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  child: const Icon(
                    Icons.image,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // product category
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Category",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: orange,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                // product name
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Subcategory",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: dark,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // product price
                    Text(
                      "15.000",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: dark,
                      ),
                    ),
                    // step counter
                    Row(
                      children: [
                        // minus button
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (_counter > 0) {
                                _counter--;
                              }
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: softGray,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: dark,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        // counter
                        Text(
                          _counter.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: dark,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        // plus button
                        InkWell(
                          onTap: () {
                            setState(() {
                              _counter++;
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: softGray,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.add,
                              color: dark,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // product description
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed nisl auctor, lacinia nisl sed, lacinia nisl. Sed nisl auctor, lacinia nisl sed, lacinia nisl.",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: dark,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // related products
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Related Products",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: dark,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // related products list
                const RelatedProducts(),
                const SizedBox(
                  height: 20,
                ),
                // add to cart button
                CustomFilledButton(
                  color: orange,
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  text: "Add to Cart",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 80,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // add to cart button
              CustomButton(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: softGray,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: dark,
                        ),
                      ),
                    ],
                  )),
              // buy now button
              CustomFilledButton(
                width: 150,
                height: 50,
                color: orange,
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                text: "Buy Now",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      height: 180,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 135,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product image
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 112,
                    width: 112,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: softGray,
                      ),
                    ),
                    child: const Icon(
                      Icons.image,
                      size: 100,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                // product name
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Product Name",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: dark,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                // product price
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "15.000",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: dark,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
