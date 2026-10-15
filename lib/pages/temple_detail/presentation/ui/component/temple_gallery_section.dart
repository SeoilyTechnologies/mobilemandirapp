import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/pages/temple_detail/presentation/ui/component/section_title.dart';

import '../../../../../common/routes/exports.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';


class TempleGallerySection extends StatelessWidget {
  const TempleGallerySection({super.key});

  Widget item(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        AppConstant.fileBaseUrl+image,
        width: 92,
        height: 88,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TempleDetailNewBloc, TempleDetailNewState>(
      builder: (context, state) {
        final gallery =
            state.templeDetailApiResponse.data.gallery;

        if (gallery.isEmpty) {
          return const SizedBox.shrink();
        }

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: const Color(0xFFE4D7C8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: context.l10n.templeGallery),
              const SizedBox(height: 14),

              SizedBox(
                height: 92,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: gallery.length,
                  separatorBuilder: (_, __) =>
                  const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return item(gallery[index]);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}