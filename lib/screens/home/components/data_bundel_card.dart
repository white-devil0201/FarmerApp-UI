import 'package:flutter/material.dart';

class DataBundelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 2.0,
        bottom: 2.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFF1F1F1).withOpacity(1.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF7E7D7D).withOpacity(0.5),
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 15.0, right: 0, bottom: 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Tomato",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        " (20 kg)",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          child: Icon(
                            Icons.arrow_drop_up_outlined,
                            color: Colors.green,
                            size: 25.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text(
                            "High Price",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.red,
                          size: 25.0,
                        ),
                        Text(
                          "Low Price",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24.0,
                        ),
                        child: Text(
                          "1500\$",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 61.0),
                        child: Text(
                          "1500\$",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1.05,
            /* child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFC4C4C4).withOpacity(0.5),
                    blurRadius: 5,
                    spreadRadius: 5,
                    offset: Offset(25, 55),
                  ),
                ],
              ),*/
            child: Image.asset(
              'assets/images/tomato.png',
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
            // ),
          ),
        ],
      ),
    );
  }
}
