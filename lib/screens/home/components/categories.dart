import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Live Price",
    "News",
    "Loan/Subsidy",
    "Consultation"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, top: 10.0, bottom: 8.0),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 8.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 22.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Color(0xFF36B23A)
              : Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(21),
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: selectedIndex == index ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
