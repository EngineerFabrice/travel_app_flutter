import 'package:flutter/material.dart';
import 'package:travel_app/models/travel_data.dart';
import 'package:travel_app/screens/detail_screen.dart';
import 'package:travel_app/widgets/category_chip.dart';
import 'package:travel_app/widgets/destination_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _selectedCategory = 'All';
  final List<String> categories = ['All', 'Beach', 'Mountain', 'City'];

//Search Controller
  final TextEditingController _searchController = TextEditingController();
//Filtered destination list
  List<Destination> _filteredDestinations = TravelData.destinations;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterDestinations);
  }

  void _filterDestinations() {
    final query = _searchController.text.toLowerCase();

    setState(() {
      _filteredDestinations = TravelData.destinations.where((dest) {
        final matchesCategory =
            _selectedCategory == 'All' || dest.category == _selectedCategory;
        final matchesSearch =
            dest.title.toLowerCase().contains(query); // filter by title
        return matchesCategory && matchesSearch;
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search destinations...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                        },
                      )
                    : null,
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Categories
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategoryChip(
                  label: categories[index],
                  isSelected: _selectedCategory == categories[index],
                  onTap: () {
                    setState(() {
                      _selectedCategory = categories[index];
                      _filterDestinations();
                    });
                  },
                );
              },
            ),
          ),

          // Popular Section Title
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedCategory = 'All';
                      _searchController.clear();
                      _filteredDestinations = TravelData.destinations;
                    });
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),

          // Popular list
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: TravelData.getPopularDestinations().length,
              itemBuilder: (context, index) {
                final dest = TravelData.getPopularDestinations()[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(destination: dest),
                      ),
                    );
                  },
                  child: Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 12),
                    child: DestinationCard(destination: dest),
                  ),
                );
              },
            ),
          ),

          // All Destinations Title
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: Text(
              'All Destinations',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // All Destinations Grid
          Expanded(
            child: _filteredDestinations.isEmpty
                ? const Center(
                    child: Text(
                      "No destinations found",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: _filteredDestinations.length,
                    itemBuilder: (context, index) {
                      final dest = _filteredDestinations[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(destination: dest),
                            ),
                          );
                        },
                        child: DestinationCard(destination: dest),
                      );
                    },
                  ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
