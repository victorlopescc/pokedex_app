import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/string_utils.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.id,
    required this.sprite,
    required this.name,
  });

  final int id;
  final String sprite;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 108,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.only(
              top: 4,
              left: 8,
              right: 8,
            ),
            child: Text(
              '#$id',
              style: const TextStyle(
                color: AppColors.medium,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 8,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 4,
                  left: 8,
                  right: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.light,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: SizedBox(
                  width: 86,
                  height: 16,
                  child: Text(
                    StringUtils.capitalize(name),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.dark,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -45,
                child: Image.network(
                  sprite,
                  width: 72,
                  height: 72,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
