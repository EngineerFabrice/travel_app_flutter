class Destination {
  final String id;
  final String title;
  final String location;
  final String description;
  final String category;
  final double price;
  final double rating;
  final int reviews;
  final String imageUrl;

  const Destination({
    required this.id,
    required this.title,
    required this.location,
    required this.description,
    this.category = 'All',
    required this.price,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
  });
}

//Hard-coded data for destinations
class TravelData {
  static const List<Destination> destinations = [
    Destination(
      id: '1',
      title: 'Santorini',
      location: 'Greece',
      description: 'Beautiful sunset views and white houses',
      category: "City",
      price: 1299,
      rating: 4.9,
      reviews: 1243,
      imageUrl: 'assets/images/santorini.jpg',
    ),
    Destination(
      id: '2',
      title: 'Swiss Alps',
      location: 'Switzerland',
      description: 'Majestic mountains and fresh air',
      category: "Mountain",
      price: 1899,
      rating: 4.8,
      reviews: 982,
      imageUrl: 'assets/images/swiss_alps.jpg',
    ),
    Destination(
      id: '3',
      title: 'Kyoto',
      location: 'Japan',
      description: 'Ancient temples and cherry blossoms',
      category: "City",
      price: 1599,
      rating: 4.9,
      reviews: 1567,
      imageUrl: 'assets/images/kyoto.jpg',
    ),
    Destination(
      id: '4',
      title: 'Bali',
      location: 'Indonesia',
      description: 'Tropical paradise with rich culture',
      category: "Beach",
      price: 999,
      rating: 4.7,
      reviews: 2134,
      imageUrl: 'assets/images/bali.jpg',
    ),
  ];

  static List<Destination> getPopularDestinations() {
    return destinations.take(2).toList();
  }
}
