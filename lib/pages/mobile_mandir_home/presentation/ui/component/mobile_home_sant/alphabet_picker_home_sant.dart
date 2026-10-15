import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/values/values_exports.dart';



class AlphabetPickerHomeSant extends StatelessWidget {
  final String title;
  final ValueChanged<String> onSelected;
  final String? selectedValue;
  final VoidCallback? onClear;

  const AlphabetPickerHomeSant({
    super.key,
    required this.title,
    required this.onSelected,
    this.selectedValue,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return AlphabetPickerHomeSantSmall(
        title: title,
        onSelected: onSelected,
        selectedValue: selectedValue,
        onClear: onClear,
      );
    } else {
      return AlphabetPickerHomeSantMedium(
        title: title,
        onSelected: onSelected,
        selectedValue: selectedValue,
        onClear: onClear,
      );
    }
  }
}


class AlphabetPickerHomeSantSmall extends StatelessWidget {
  final String title;
  final ValueChanged<String> onSelected;
  final String? selectedValue;
  final VoidCallback? onClear;

  const AlphabetPickerHomeSantSmall({
    super.key,
    required this.title,
    required this.onSelected,
    this.selectedValue,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final letters = Utils.getAlphabetList(context);

    return Container(
      color: AppColor.appSantbackground,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth * 0.05,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// 🔹 TITLE + CLEAR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.appBlack,
                ),
              ),

              /// 👇 Clear Filter (only when selected)
              if (selectedValue != null && selectedValue!.isNotEmpty)
                GestureDetector(
                  onTap: onClear,
                  child: Row(
                    children: [
                      Icon(Icons.close, size: 16, color: Colors.black),
                      SizedBox(width: 4),
                      Text(
                        context.l10n.clear,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

          const SizedBox(height: 12),

          /// 🔤 Alphabet Grid
          Wrap(
            spacing: 3,
            runSpacing: 8,

            alignment: WrapAlignment.center,
            children: letters.map((letter) {
              final isSelected = letter == selectedValue;

              return GestureDetector(
                onTap: () => onSelected(letter),
                child: Padding(padding: EdgeInsets.only(left: 2,right: 2),
                child: Container(
                  width: 33,
                  height: 33,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? AppColor.newsecondaruy
                        : Colors.transparent,
                    border: Border.all(
                      color: AppColor.newsecondaruy,
                      width: 1.2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      letter,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.04,
                        color: isSelected
                            ? Colors.white
                            : AppColor.newsecondaruy,
                      ),
                    ),
                  ),
                ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}



class AlphabetPickerHomeSantMedium extends StatelessWidget {
  final String title;
  final ValueChanged<String> onSelected;
  final String? selectedValue;
  final VoidCallback? onClear;

  const AlphabetPickerHomeSantMedium({
    super.key,
    required this.title,
    required this.onSelected,
    this.selectedValue,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final letters = Utils.getAlphabetList(context);

    return Container(
      color: AppColor.appSantbackground,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth * 0.05,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// 🔹 TITLE + CLEAR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.04,
                  color: AppColor.appBlack,
                ),
              ),

              /// 👇 Clear Filter (only when selected)
              if (selectedValue != null && selectedValue!.isNotEmpty)
                GestureDetector(
                  onTap: onClear,
                  child: Row(
                    children: [
                      Icon(Icons.close, size: 16, color: Colors.black),
                      SizedBox(width: 4),
                      Text(
                        context.l10n.clear,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

          const SizedBox(height: 12),

          /// 🔤 Alphabet Grid
          Wrap(
            spacing: 3,
            runSpacing: 8,

            alignment: WrapAlignment.center,
            children: letters.map((letter) {
              final isSelected = letter == selectedValue;

              return GestureDetector(
                onTap: () => onSelected(letter),
                child: Padding(padding: EdgeInsets.only(left: 2,right: 2),
                  child: Container(
                    width: 33,
                    height: 33,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected
                          ? AppColor.newsecondaruy
                          : Colors.transparent,
                      border: Border.all(
                        color: AppColor.newsecondaruy,
                        width: 1.2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        letter,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.024,
                          color: isSelected
                              ? Colors.white
                              : AppColor.newsecondaruy,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}



class AlphabetPickerLargeLandScape extends StatelessWidget {
  final String title;
  final ValueChanged<String> onSelected;
  final String? selectedValue;
  final VoidCallback? onClear;

  const AlphabetPickerLargeLandScape({
    super.key,
    required this.title,
    required this.onSelected,
    this.selectedValue,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final letters = Utils.getAlphabetList(context);

    return Container(
      color: AppColor.appSantbackground,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// 🔹 TITLE + CLEAR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.04,
                  color: AppColor.appBlack,
                ),
              ),

              /// 👇 Clear Filter (only when selected)
              if (selectedValue != null && selectedValue!.isNotEmpty)
                GestureDetector(
                  onTap: onClear,
                  child: Row(
                    children: [
                      Icon(Icons.close, size: 16, color: Colors.black),
                      SizedBox(width: 4),
                      Text(
                        context.l10n.clear,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

          const SizedBox(height: 12),

          /// 🔤 Alphabet Grid
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: letters.map((letter) {
              final isSelected = letter == selectedValue;

              return GestureDetector(
                onTap: () => onSelected(letter),
                child: Container(
                  width: 42,
                  height: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? AppColor.newsecondaruy
                        : Colors.transparent,
                    border: Border.all(
                      color: AppColor.newsecondaruy,
                      width: 1.2,
                    ),
                  ),
                  child: Text(
                    letter,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.023,
                      color: isSelected ? Colors.white : AppColor.newsecondaruy,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class AlphabetPickerMedium extends StatelessWidget {
  final String title;
  final ValueChanged<String> onSelected;
  final String? selectedValue;
  final VoidCallback? onClear;

  const AlphabetPickerMedium({
    super.key,
    required this.title,
    required this.onSelected,
    this.selectedValue,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final letters = Utils.getAlphabetList(context);

    return Container(
      color: AppColor.appSantbackground,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITLE + CLEAR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.048,
                  color: AppColor.appBlack,
                ),
              ),

              /// 👇 Clear Filter (only when selected)
              if (selectedValue != null && selectedValue!.isNotEmpty)
                GestureDetector(
                  onTap: onClear,
                  child: Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Row(
                      children: [
                        Icon(Icons.close, size: 16, color: Colors.black),
                        SizedBox(width: 4),
                        Text(
                          context.l10n.clear,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 12),

          /// 🔤 Alphabet Grid
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: letters.map((letter) {
              final isSelected = letter == selectedValue;

              return GestureDetector(
                onTap: () => onSelected(letter),
                child: Container(
                  width: 54,
                  height: 54,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? AppColor.newsecondaruy
                        : Colors.transparent,
                    border: Border.all(
                      color: AppColor.newsecondaruy,
                      width: 1.2,
                    ),
                  ),
                  child: Text(
                    letter,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.04,
                      color: isSelected ? Colors.white : AppColor.newsecondaruy,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
