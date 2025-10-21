import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// A sample card widget displaying event or content information with host details.
///
/// This widget creates a visually appealing card with:
/// - Host profile picture and name
/// - Host badge indicator
/// - Event/content title
/// - Location information with icon
/// - Pink/magenta gradient background
///
/// Example usage:
/// ```dart
/// Card4()
/// ```
///
/// The card has fixed dimensions (224px height) and uses full width.
/// Currently displays sample data for "Constructive and destructive waves" event in Seoul.
class Card4 extends StatelessWidget {
  const Card4({super.key});

  /// Builds the card with host information, title, and location.
  ///
  /// The layout structure:
  /// - Row: Avatar + Name + Host badge
  /// - Title text
  /// - Row: Location icon + City name
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 73, 152),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://fastly.picsum.photos/id/31/3264/4912.jpg?hmac=lfmmWE3h_aXmRwDDZ7pZb6p0Foq6u86k_PpaFMnq0r8",
                ),
              ),
              const Gap(8),
              const Text(
                'Rani Park',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.64,
                ),
              ),
              const Gap(8),
              Container(
                height: 24,
                width: 46,
                decoration: BoxDecoration(
                  color: const Color(0xFFE9E1FF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    'Host',
                    style: TextStyle(
                      color: Color(0xFF7949FF),
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(16),
          const Text(
            'Constructive and destructive waves',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0,
              letterSpacing: -0.96,
            ),
          ),
          const Gap(48),
          const Row(
            children: [
              Icon(Icons.room, color: Colors.white, size: 16),
              Gap(8),
              Text(
                'Seoul',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
