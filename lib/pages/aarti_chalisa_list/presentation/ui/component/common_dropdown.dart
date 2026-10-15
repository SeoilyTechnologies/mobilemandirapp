import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/component/network_image.dart';
import '../../../../../common/network/app_constant.dart';

class CommonFilterDropdown<T> extends StatelessWidget {
  final String hint;
  final String? image;
  final List<T> items;
  final T? selectedItem;
  final String Function(T item) itemLabel;
  final String Function(T item)? imageLabel;
  final ValueChanged<T> onSelected;
  final IconData? leadingIcon;

  const CommonFilterDropdown({
    super.key,
    required this.hint,
    required this.items,
    required this.itemLabel,
    required this.onSelected,
    this.selectedItem,
    this.imageLabel,
    this.leadingIcon,
    this.image,
  });

  bool _isSelected(T item) {
    if (selectedItem == null) return false;
    return item == selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => _openBottomSheet(context),
      child: Container(
        // width: 100, ❌ remove this
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                selectedItem == null ? hint : itemLabel(selectedItem as T),
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: AppFont.gilroyMedium,
                  color: Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis, // 👈 important
                softWrap: false,
              ),
            ),

            if (leadingIcon != null) ...[
              const SizedBox(width: 6),
              Icon(leadingIcon, size: 18, color: Colors.black),
            ],

            const SizedBox(width: 4),
            const Icon(Icons.arrow_drop_down, size: 20, color: Colors.black),
          ],
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                /// Bottom Sheet
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: context.screenHeight * 0.6,
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    color: Color(0xffF7F3EC),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      /// Header
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 12,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColor.newsecondaruy,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          hint,
                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.048,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final item = items[index];
                            final isSelected = _isSelected(item);

                            return InkWell(
                              onTap: () {
                                onSelected(item);
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 14),
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color(0xffFFF9EE)
                                      : const Color(0xffFDF8F1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    if (imageLabel != null &&
                                        imageLabel!(item).isNotEmpty)
                                      NetworkImageWidget(
                                        imageUrl:
                                            AppConstant.fileBaseUrl +
                                            imageLabel!(item),
                                        imageHeight: 44,
                                        imageWidth: 44,
                                        radiusAll: 4,
                                        fullimage: true,
                                      ),

                                    if (imageLabel != null &&
                                        imageLabel!(item).isNotEmpty)
                                      const SizedBox(width: 16),

                                    Expanded(
                                      child: Text(
                                        itemLabel(item),
                                        style: AppTextStyle.gilroySemiBold(
                                          context.screenWidth * 0.042,
                                          color: const Color(0xff7A4200),
                                        ),
                                      ),
                                    ),

                                    if (isSelected)
                                      const Icon(
                                        Icons.check_circle,
                                        color: Color(0xff8A4A00),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                /// Close Button
                Positioned(
                  top: -45,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 62,
                      width: 62,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 34,
                        color: Color(0xff8A4A00),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class CommonFilterDropdownMedium<T> extends StatelessWidget {
  final String hint;
  final List<T> items;
  final T? selectedItem;
  final String Function(T item) itemLabel;
  final ValueChanged<T> onSelected;
  final IconData? leadingIcon;

  const CommonFilterDropdownMedium({
    super.key,
    required this.hint,
    required this.items,
    required this.itemLabel,
    required this.onSelected,
    this.selectedItem,
    this.leadingIcon,
  });

  bool _isSelected(T item) {
    if (selectedItem == null) return false;
    return item == selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => _openBottomSheet(context),
      child: Container(
        // width: 100, ❌ remove this
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                selectedItem == null ? hint : itemLabel(selectedItem as T),
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: AppFont.gilroyMedium,
                  color: Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis, // 👈 important
                softWrap: false,
              ),
            ),

            if (leadingIcon != null) ...[
              const SizedBox(width: 6),
              Icon(leadingIcon, size: 18, color: Colors.black),
            ],

            const SizedBox(width: 4),
            const Icon(Icons.arrow_drop_down, size: 34, color: Colors.black),
          ],
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return ListView.builder(
          itemCount: items.length,
          // padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
          // separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (context, index) {
            final item = items[index];
            final isSelected = _isSelected(item);
            return GestureDetector(
              onTap: () {
                onSelected(item);
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColor.primary.withOpacity(0.08) // ✅ highlight bg
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10), // 🔥 rounded
                  border: Border.all(color: Colors.grey.withOpacity(0.25)),
                  boxShadow: [
                    BoxShadow(
                      color: isSelected
                          ? AppColor
                                .primary // ✅ highlight border
                          : Colors.grey.withOpacity(0.25),

                      blurRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                // child: Text(
                //   itemLabel(item),
                //   style: AppTextStyle.gilroyMedium(
                //     context.screenWidth * 0.034,
                //     color: AppColor.fullBlack,
                //   ),
                // ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        itemLabel(item),
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.034,
                          color: isSelected
                              ? AppColor.white
                              : AppColor.fullBlack,
                        ),
                      ),
                    ),

                    if (isSelected)
                      const Icon(
                        Icons.check_circle,
                        size: 18,
                        color: AppColor.white,
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class CommonFilterDropdownLarge<T> extends StatelessWidget {
  final String hint;
  final List<T> items;
  final T? selectedItem;
  final String Function(T item) itemLabel;
  final ValueChanged<T> onSelected;
  final IconData? leadingIcon;

  const CommonFilterDropdownLarge({
    super.key,
    required this.hint,
    required this.items,
    required this.itemLabel,
    required this.onSelected,
    this.selectedItem,
    this.leadingIcon,
  });

  bool _isSelected(T item) {
    if (selectedItem == null) return false;
    return item == selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => _openBottomSheet(context),
      child: Container(
        // width: 100, ❌ remove this
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                selectedItem == null ? hint : itemLabel(selectedItem as T),
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: AppFont.gilroyMedium,
                  color: Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis, // 👈 important
                softWrap: false,
              ),
            ),

            if (leadingIcon != null) ...[
              const SizedBox(width: 6),
              Icon(leadingIcon, size: 18, color: Colors.black),
            ],

            const SizedBox(width: 4),
            const Icon(Icons.arrow_drop_down, size: 34, color: Colors.black),
          ],
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return ListView.builder(
          itemCount: items.length,
          // padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
          // separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (context, index) {
            final item = items[index];
            final isSelected = _isSelected(item);
            return GestureDetector(
              onTap: () {
                onSelected(item);
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColor.primary.withOpacity(0.08) // ✅ highlight bg
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10), // 🔥 rounded
                  border: Border.all(color: Colors.grey.withOpacity(0.25)),
                  boxShadow: [
                    BoxShadow(
                      color: isSelected
                          ? AppColor
                                .primary // ✅ highlight border
                          : Colors.grey.withOpacity(0.25),

                      blurRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                // child: Text(
                //   itemLabel(item),
                //   style: AppTextStyle.gilroyMedium(
                //     context.screenWidth * 0.034,
                //     color: AppColor.fullBlack,
                //   ),
                // ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        itemLabel(item),
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.034,
                          color: isSelected
                              ? AppColor.white
                              : AppColor.fullBlack,
                        ),
                      ),
                    ),

                    if (isSelected)
                      const Icon(
                        Icons.check_circle,
                        size: 18,
                        color: AppColor.white,
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
