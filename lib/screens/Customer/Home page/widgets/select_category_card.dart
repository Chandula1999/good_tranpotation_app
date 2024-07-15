import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  final String imageURL;
  final String category;
  const CategoryCard({
    super.key,
    required this.imageURL,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
              Text(
                category,
                style: TextStyle(
                  fontSize: 15,
                  color: textColor1,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
