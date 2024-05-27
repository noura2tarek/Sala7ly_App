import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.imageLink, required this.text, required this.onTab});
  final String imageLink;
  final String text;
  final void Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTab,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 189.0,
            height: 80.0,
            decoration:  BoxDecoration(
              borderRadius:
              const BorderRadius.all(Radius.circular(25.0)),
              image: DecorationImage(
                image: AssetImage(imageLink),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Text(
              text,
              style: interMedium(
                color: AppColors.black,
                fontStyle: FontStyle.normal,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
