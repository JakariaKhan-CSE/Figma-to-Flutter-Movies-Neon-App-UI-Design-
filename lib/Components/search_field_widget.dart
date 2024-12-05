import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key, required this.padding});

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 46,
        decoration: BoxDecoration(
            color: Color(0xFF767680).withOpacity(0.12), borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.search,
              size: 18,
              color: Color(0xFFFFFFFF).withOpacity(0.6),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
                child: TextField(
              style: TextStyle(fontSize: 17,
              letterSpacing: -0.41),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.6),  // opacioty and color code get from figma design
                        fontSize: 17,
                        letterSpacing: -0.41
                    )
                  ),
            )),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.mic,
              size: 18,
              color: Color(0xFFFFFFFF).withOpacity(0.6),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
