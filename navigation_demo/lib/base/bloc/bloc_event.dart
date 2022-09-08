class BlocEvent<T> {
  T type;
  Map<String, dynamic> parameters;

  BlocEvent({required this.type, required this.parameters});
}

enum MainBlocEvent {
// события навигации для bloc-а
  goToNextScreen
}