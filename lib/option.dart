enum IntegrationOptionType {

    final String title;
  final String category;
  final List<String>? subOptions;

  const IntegrationOptionType({
    required this.title,
    required this.category,
    this.subOptions,
  });

  COMPLETE_UX(
    title: 'Complete UX',
    category: 'Goal Category',
    subOptions: [
      'Cardio',
      'Strength',
      'Rehabilitation',
      'WeightManagement',
    ],
  ),
  WORKOUT_PLAN(
    title: 'Workout Plan',
    category: 'Plan',
    subOptions: <String>[
      'Full Cardio',
      'Elastic Evolution',
      'Circuit Training',
      'Fitness Cardio',
    ],
  ),
  WORKOUT(
    title: 'Workout',
    category: 'Workout',
    subOptions: <String>[
      'Fitness Lite',
      'Circuit Training',
      'Tabata',
    ],
  ),
  CHALLENGE(
    title: 'Challenge',
    category: 'Challenge',
    subOptions: <String>[
      'Squats',
      'Jumping Jack',
    ],
  ),
  CAMERA(
    title: 'Camera',
    category: '',
    subOptions: <String>[],
  );


  static IntegrationOptionType? fromPosition(int position) {
    if (position < 0 || position >= IntegrationOptionType.values.length) {
      return null;
    }
    return IntegrationOptionType.values[position];
  }
}

class IntegrationOption {
  String title;
  String optionType;
  List<String>? subOption;

  IntegrationOption({
    required this.title,
    required this.optionType,
    this.subOption,
  });
}

List<IntegrationOption> generateOptions() {
  return IntegrationOptionType.values.map((optionType) {
    return IntegrationOption(
      title: optionType.title,
      optionType: optionType.category,
      subOption: optionType.subOptions?.toList(),
    );
  }).toList();
}
