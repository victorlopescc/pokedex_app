import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/string_utils.dart';

class TypeChip extends StatelessWidget {
  const TypeChip({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.colorByType(type),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        StringUtils.capitalize(type),
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          fontSize: 10,
          color: AppColors.white,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
