import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({
    Key key,
    @required this.coverImage,
  }) : super(key: key);

  final String coverImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Image.asset(
          coverImage,
        ),
      ),
    );
  }
}
