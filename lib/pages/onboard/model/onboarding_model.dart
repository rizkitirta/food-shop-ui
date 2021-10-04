class OnboardingModel {
  final String title;
  final String description;
  final String path;

  OnboardingModel(this.title, this.description, this.path);
}

List<OnboardingModel> onBoardingList = [
  OnboardingModel(
      "Fresh Food",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam condimentum malesuada erat",
      "assets/shoping.png"),
  OnboardingModel(
      "Comfortable",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam condimentum malesuada erat",
      "assets/eat.png"),
  OnboardingModel(
      "Fast delivery",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam condimentum malesuada erat",
      "assets/delivery.jpg"),
];
