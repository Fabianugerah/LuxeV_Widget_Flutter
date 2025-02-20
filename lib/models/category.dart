class Category {
  final String name;
  final String icon;

  Category({
    required this.name,
    required this.icon,
  });
}

var categories = [
  Category(
    name: 'Trending', 
    icon: 'assets/svgs/trending.svg'
  ),
  Category(
    name: 'Popular', 
    icon: 'assets/svgs/popular.svg'
  ),
  Category(
    name: 'Discount', 
    icon: 'assets/svgs/discount.svg'
  ),
  Category(
    name: 'Recent', 
    icon: 'assets/svgs/recent.svg'
  ),
  Category(
    name: 'Watchlist', 
    icon: 'assets/svgs/watchlist.svg'
  ),
];
