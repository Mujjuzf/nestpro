class OnboardingContent {
  String? image1;
  String? image2;


  OnboardingContent({this.image1, this.image2 });
}

List<OnboardingContent> contents = [
  OnboardingContent(
    image1: "asset/intro1.png",
    image2: "asset/intro1a.png"
  ),
  OnboardingContent(
      image1: "asset/intro2.png",
      image2: "asset/intro2a.png"

  ),
  OnboardingContent(
      image1: "asset/intro3a.png",
      image2: "asset/intro3.png"


  ),
  OnboardingContent(
      image1: "asset/intro4.png",
      image2: "asset/intro4a.png"

  ),
];