import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({
    Key key,
    @required this.coverImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(children: <Widget>[
        Center(
          child: Image.asset(
            coverImage,
          ),
        ),
      ]),
    );
  }

  final String coverImage;
}
