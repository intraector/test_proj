import 'package:flutter/material.dart';
import '../../../constant/colors.dart';

class Header extends StatelessWidget {
  Header({Key key, @required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: ProjectColor.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        )
      ],
    );
  }
}
