import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {

  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
      constraints: BoxConstraints.expand(
        height: 300.0,
      ),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover
      ),
    );
  }
}