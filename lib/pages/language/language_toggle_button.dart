import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/app_color.dart';

import 'bloc/language_bloc.dart';

class LanguageToggleButton extends StatelessWidget {
  const LanguageToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
      tooltip: 'Change Language',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      icon: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.translate, size: 18, color: AppColor.newsecondaruy),
            const SizedBox(width: 4),
            BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return Text(
                  state.locale.languageCode == 'hi' ? 'हिन्दी' : 'English',
                  style: TextStyle(
                    color: AppColor.newsecondaruy,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                );
              },
            ),
            const SizedBox(width: 2),
            Icon(Icons.arrow_drop_down, size: 18, color: AppColor.newsecondaruy),
          ],
        ),
      ),
      onSelected: (locale) {
        context.read<LanguageBloc>().add(ChangeLanguageEvent(locale));
      },
      itemBuilder: (context) => const [
        PopupMenuItem(value: Locale('en'), child: Text('English')),
        PopupMenuItem(value: Locale('hi'), child: Text('हिन्दी')),
      ],
    );
  }
}
