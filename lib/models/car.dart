class Car {
  final String title;
  final String image;
  final String distance;
  final String price;
  final CarType? type;
  final String? typeText;
  final double? ratingStar;
  final double? ratingCount;

  Car(
      {required this.title,
      required this.image,
      required this.distance,
      required this.price,
      this.type,
      this.typeText,
      this.ratingCount,
      this.ratingStar
      });
}

enum CarType { discount, popular }

var cars = [
  Car(
    title: "Jeep Wrangler 2007",
    image: "assets/images/mobil2.png",
    distance: "Rubicon",
    price: "\$155,00",
    type: CarType.popular,
    typeText: "Popular",
  ),
  Car(
    title: "Pontiac GTO 1969",
    image: "assets/images/mobil3.png",
    distance: "Pontiac",
    price: "\$129,00",
    type: CarType.popular,
    typeText: "Popular",
  ),
  Car(
    title: "Mini Cooper 1300",
    image: "assets/images/mobil1.png",
    distance: "Mini Cooper",
    price: "\$112,00",
    type: CarType.discount,
    typeText: "OFF 60%",
  ),
  Car(
    title: "GT Spirit Ford Bonco",
    image: "assets/images/mobil4.png",
    distance: "Ford",
    price: "\$169,00",
    type: CarType.discount,
    typeText: "OFF 55%",
  ),
];

var freshLots = [
  Car(
    title: "Jeep Wrangler 2007",
    image: "assets/images/popular1.png",
    distance: "Rubicon",
    price: "\$155,00",
    ratingStar: 4,
    ratingCount: 23909,
  ),
  Car(
    title: "Aston Martin X610",
    image: "assets/images/popular2.png",
    distance: "Aston Martin",
    price: "\$137,00",
    ratingStar: 5,
    ratingCount: 5395,
  ),
  Car(
    title: "Pontiac GTO 1969",
    image: "assets/images/popular3.png",
    distance: "Pontiac",
    price: "\$129,00",
    ratingStar: 4.5,
    ratingCount: 14593,
  ),
];
