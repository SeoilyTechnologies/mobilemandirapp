import '../../../../../common/routes/exports.dart';

class TopFilters extends StatelessWidget {
  final List<String> filters;

  const TopFilters({super.key, required this.filters});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              children: [
                Text(
                  filters[index],
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(width: 6),
                const Icon(Icons.keyboard_arrow_down, size: 18),
              ],
            ),
          );
        },
      ),
    );
  }
}
