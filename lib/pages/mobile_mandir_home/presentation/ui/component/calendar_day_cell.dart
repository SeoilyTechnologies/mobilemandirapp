import '../../../../../common/routes/exports.dart';

class CalendarDayCell extends StatelessWidget {
  final DateTime date;
  final String tithi;
  final String nakshatra;
  final String sunrise;
  final String sunset;

  const CalendarDayCell({
    required this.date,
    required this.tithi,
    required this.nakshatra,
    required this.sunrise,
    required this.sunset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date number
          Text(
            '${date.day}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          // Tithi
          Text(
            tithi,
            style: const TextStyle(fontSize: 11),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          // Nakshatra
          Text(
            nakshatra,
            style: const TextStyle(fontSize: 11),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const Spacer(),

          // Sunrise / Sunset
          Text(
            '🌅 $sunrise',
            style: const TextStyle(fontSize: 10),
          ),
          Text(
            '🌇 $sunset',
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
