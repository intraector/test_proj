import 'package:flutter/material.dart';
import '../../../constant/app_screen.dart';
import '../../../constant/colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key key, @required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppScreen.hPercent * 40,
      decoration: BoxDecoration(
        color: ProjectColor.white,
        borderRadius: BorderRadius.circular(
          AppScreen.hPercent * 4,
        ),
        boxShadow: [
          BoxShadow(
            color: ProjectColor.greyLight,
            blurRadius: AppScreen.hPercent * 2.5,
          ),
        ],
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(AppScreen.hPercent * 2.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5.copyWith(
              color: ProjectColor.black,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
