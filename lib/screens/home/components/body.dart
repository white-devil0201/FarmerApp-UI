import 'package:farmer1/screens/home/components/categories.dart';
import 'package:farmer1/screens/home/components/data_bundel_card.dart';
import 'package:farmer1/screens/home/components/searchbar.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(),
        SearchBar(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 5.0,
            ),
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 18,
                  childAspectRatio: 3.00,
                ),
                itemBuilder: (context, index) => DataBundelCard()),
          ),
        ),
      ],
    );
  }
}
