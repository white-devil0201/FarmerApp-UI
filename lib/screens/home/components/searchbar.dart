import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 12.0,
            right: 0,
            bottom: 25,
          ),
          child: Container(
            width: 164,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFF1F1F1).withOpacity(1.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF7F5F5).withOpacity(0.5),
                  blurRadius: 3,
                  offset: Offset(1, 0),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 0, right: 0, bottom: 8.0),
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.black),
                cursorColor: Colors.grey,
                cursorHeight: 30,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 15.0),
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusColor: Colors.black,
                  border: InputBorder.none,
                  prefixIcon: Image.asset('assets/icons/search.png'),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 50,
            height: 70,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 0, right: 0, bottom: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 0,
                      bottom: 15.0,
                    ),
                    child: IconButton(
                      icon: new Image.asset(
                        'assets/icons/location.png',
                        height: 25,
                        width: 25,
                      ),
                      onPressed: () => {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      bottom: 15.0,
                      right: 0,
                    ),
                    child: Text(
                      'Junagad KVM',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 0,
                      left: 0,
                      bottom: 15.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        right: 0,
                      ),
                      child: IconButton(
                        icon: new Image.asset(
                          'assets/icons/arrow.png',
                          height: 20,
                          width: 20,
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
