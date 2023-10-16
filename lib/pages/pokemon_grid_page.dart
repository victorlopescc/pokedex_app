import 'package:flutter/material.dart';
import 'package:pokedex_app/widgets/type_chip.dart';

import '../widgets/pokemon_card.dart';

class PokemonGridPage extends StatefulWidget {
  const PokemonGridPage({super.key});

  @override
  State<PokemonGridPage> createState() => _PokemonGridPageState();
}

class _PokemonGridPageState extends State<PokemonGridPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          PokemonCard(
            id: 151,
            sprite:
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png',
            name: 'mew',
          ),
          SizedBox(height: 10),
          TypeChip(type: 'psychic'),
        ],
      ),
    );
  }
}
