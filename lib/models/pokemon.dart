class Pokemon {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<String> abilities;
  final String sprite;
  final String description;
  final List<Stats> stats;
  final List<String> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.sprite,
    required this.description,
    required this.stats,
    required this.types,
  });
}

class Stats {
  final String name;
  final int baseStat;

  Stats({
    required this.name,
    required this.baseStat,
  });
}
