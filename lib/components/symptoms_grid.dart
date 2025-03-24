import 'package:fadfocus_assignment/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

class Components {
  static symptomps(
    String title,
    int itemCount,
    bool isSubtitle,
    String subTitle,
    VoidCallback onTap,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0.0, bottom: 8),
          child: Text(title, style: AppTextstyles.titleText),
        ),
        isSubtitle
            ? Padding(
              padding: const EdgeInsets.only(left: 0.0, bottom: 8),
              child: Text(
                subTitle,
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
            )
            : SizedBox.shrink(),
        GridView.builder(
          shrinkWrap: true,
          // padding: EdgeInsets.only(bottom:  8),
          itemCount: itemCount,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: onTap,
              child: Column(
                children: [
                  Container(
                    // margin: EdgeInsets.all(8),
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),
                  ),
                  // SizedBox(height: 4,),
                  Text(
                    "General physician",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
