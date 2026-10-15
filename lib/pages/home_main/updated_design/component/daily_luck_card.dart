import 'package:flutter/material.dart';

class DailyLuckCard extends StatelessWidget {
  final String todayDate;
  final String tithi;
  final List<Color> luckyColors;
  final String luckyNumber;
  final String luckyTime;
  final String moodOfDay;

  const DailyLuckCard({
    super.key,
    required this.todayDate,
    required this.tithi,
    required this.luckyColors,
    required this.luckyNumber,
    required this.luckyTime,
    required this.moodOfDay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2E8B57), Color(0xFF00A86B)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date & Tithi
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                todayDate,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                tithi,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          const Divider(color: Colors.white24, thickness: 1),
          const SizedBox(height: 12),

          // Lucky Color
          Row(
            children: [
              Text(
                "🎨 Lucky Color:",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
              const SizedBox(width: 8),
              Row(
                children: luckyColors
                    .map(
                      (color) => Container(
                    margin: const EdgeInsets.only(right: 6),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                )
                    .toList(),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Lucky Number
          Row(
            children: [
              Text(
                "🔢 Lucky Number:",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                luckyNumber,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Lucky Time
          Row(
            children: [
              Text(
                "⏰ Lucky Time:",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                luckyTime,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Mood of the Day
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "😊 Mood of the Day:",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  moodOfDay,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
