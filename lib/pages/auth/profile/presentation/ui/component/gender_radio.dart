import '../../../../../../common/routes/exports.dart';
import '../../bloc/profile_bloc.dart';
import '../../bloc/profile_event.dart';

class GenderRow extends StatelessWidget {
  final bool isEditing;
  final String selectedGender; // "Male" / "Female" / "Other"

  const GenderRow({
    super.key,
    required this.isEditing,
    required this.selectedGender,
  });

  @override
  Widget build(BuildContext context) {
    final genders = ['Male', 'Female', 'Other'];

    return Row(
      children: genders.map((g) {
        final isSelected = selectedGender == g;
        return Expanded(
          child: InkWell(
            onTap: !isEditing
                ? null
                : () {
              context
                  .read<ProfileBloc>()
                  .add(ProfileEvent.updateGender(g));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<String>(
                  value: g,
                  groupValue: selectedGender,
                  activeColor: Colors.orange,
                  onChanged: !isEditing
                      ? null
                      : (val) {
                    if (val == null) return;
                    context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.updateGender(val));
                  },
                ),
                Text(
                  g,
                  style: TextStyle(
                    fontSize: 13,
                    color: isSelected ? Colors.black : Colors.grey[700],
                    fontWeight:
                    isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
