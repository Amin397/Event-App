class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2;
  final List categoryId, galleryImage;

  Event(
      this.imagePath,
      this.title,
      this.description,
      this.location,
      this.duration,
      this.punchLine1,
      this.punchLine2,
      this.categoryId,
      this.galleryImage);
}

    final animalsEvent = Event(
        "assets/images/anmal1.jpg",
        "Animal",
        "Guests list fill up fast so be sure to apply before hand to secure a spot",
        "Pleasant Park",
        "4h",
        "Animals",
        "awesome animals",
        [0, 1],
        ["assets/images/birds.jpg ", "assets/images/anmal1.jpg"]);

    final townsEvent = Event(
        "assets/images/town1.jpg",
        "SunFransisco",
        "Guests list fill up fast so be sure to apply before hand to secure a spot",
        "USA",
        "12h",
        "Towns",
        "Beutifull Towns",
        [0, 2],
        ["assets/images/town2.jpg", "assets/images/town3.jpg"]);

    final foodsEvent = Event(
        "assets/images/breakfast.jpeg",
        "Breakfast",
        "Guests list fill up fast so be sure to apply before hand to secure a spot",
        "your Home",
        "1h",
        "Breakfast",
        "yami Breakfast",
        [0, 3],
        ["assets/images/lunch.jpeg", "assets/images/supper_1.jpeg", "assets/images/cake1.jpg"]);

    final flowerEvent = Event(
        "assets/images/flower1.jpg",
        "Flower",
        "Guests list fill up fast so be sure to apply before hand to secure a spot",
        "Kordestan",
        "2day",
        "Red Flower",
        "flowerss",
        [0, 4],
        ["assets/images/birds.jpg"]);

final events = [animalsEvent , townsEvent , foodsEvent , flowerEvent];
