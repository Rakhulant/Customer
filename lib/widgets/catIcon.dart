import 'package:flutter/material.dart';

class CatIcon extends StatelessWidget {
  final String label;
  final String imageUri;
  CatIcon(this.label, this.imageUri);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(imageUri),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
