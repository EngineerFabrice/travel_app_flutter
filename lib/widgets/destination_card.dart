import 'package:flutter/material.dart';
import 'package:travel_app/models/travel_data.dart';
import 'package:travel_app/theme/app_theme.dart';
import 'package:travel_app/widgets/rating_widget.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;

  const DestinationCard({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Prevents image overflow
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with fixed aspect ratio
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              destination.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  destination.location,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                RatingWidget(
                  rating: destination.rating,
                  reviews: destination.reviews,
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${destination.price}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
