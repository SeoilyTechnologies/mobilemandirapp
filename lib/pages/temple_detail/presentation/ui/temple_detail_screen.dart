import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import '../../../../../common/component/skeleton_loader.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/screenUtils.dart';
import '../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../bloc/templ_detail_new/temple_detail_new_event.dart';
import '../bloc/templ_detail_new/temple_detail_new_state.dart';
import 'component/about_temple_card.dart';
import 'component/info_tile.dart';
import 'component/route_card.dart';
import 'component/section_title.dart';
import 'component/services_section.dart';
import 'component/temple_gallery_section.dart';
import 'component/temple_header.dart';
import 'component/timing_card.dart';
import 'component/explore_nearby_card.dart';
import 'component/hotel_section.dart';
import 'component/related_temple_section.dart';
import 'component/address_section.dart';

class TempleDetailScreen extends StatefulWidget {
  const TempleDetailScreen({super.key});

  @override
  State<TempleDetailScreen> createState() => _TempleDetailScreenState();
}

class _TempleDetailScreenState extends State<TempleDetailScreen> {
  @override
  void initState() {
    super.initState();
    // Deep-link se navigate hone pe arguments mein templeId milta hai.
    // Normal navigation (temple list/god-detail) event pehle fire karta hai
    // aur arguments nahi pass karta — isliye yahan kuch nahi hota.
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadFromDeepLinkArgs());
  }

  void _loadFromDeepLinkArgs() {
    if (!mounted) return;
    final args = ModalRoute.of(context)?.settings.arguments;
    final templeId = args is Map ? args['templeId']?.toString() : null;
    if (templeId == null || templeId.isEmpty) return;
    context.read<TempleDetailNewBloc>().add(GetTempleDetailById(id: templeId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TempleDetailNewBloc, TempleDetailNewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFF4EEE8),
          body: state.isLoading 
            ? Column(
                children: [
                  const SkeletonDetailHeader(),
                  const SizedBox(height: 16),
                  const SkeletonListView(itemCount: 4),
                ],
              )
            : SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const TempleHeader(),

                Transform.translate(
                  offset: const Offset(0, -18),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4EEE8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 18),

                          /// Basic Information
                          SectionTitle(title: context.l10n.basicInformation),

                          const SizedBox(height: 8),

                          Row(
                            children: [
                              Expanded(
                                child: InfoTile(
                                  title: context.l10n.templeName,

                                  value:
                                      "${state.templeDetailApiResponse.data.title}",
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: InfoTile(
                                  title: context.l10n.locationLabel2,
                                  value:
                                      "${state.templeDetailApiResponse.data.location}",
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          Row(
                            children: [
                              Expanded(
                                child: InfoTile(
                                  title: context.l10n.district,
                                  value:
                                      "${state.templeDetailApiResponse.data.district}",
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: InfoTile(
                                  title: context.l10n.state,
                                  value:
                                      "${state.templeDetailApiResponse.data.state}",
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          Row(
                            children: [
                              Expanded(
                                child: InfoTile(
                                  title: context.l10n.country,
                                  value:
                                      "${state.templeDetailApiResponse.data.country}",
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: InfoTile(
                                  title: context.l10n.architecture,
                                  value:
                                      "${state.templeDetailApiResponse.data.architecture}",
                                  highlight: false,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 28),
                          const AddressSection(),
                          const SizedBox(height: 28),
                          /// About Temple
                          SectionTitle(title: context.l10n.aboutTemple),

                          const SizedBox(height: 8),

                          AboutTempleCard(
                            description:
                                "${state.templeDetailApiResponse.data.about}",
                          ),

                          const SizedBox(height: 28),

                          /// Services
                          SectionTitle(title: context.l10n.servicesFacilities),

                          const SizedBox(height: 8),

                          const ServicesSection(),

                          const SizedBox(height: 28),

                          /// Gallery
                          state.templeDetailApiResponse.data.gallery.isNotEmpty
                              ? const TempleGallerySection()
                              : SizedBox(),

                          state.templeDetailApiResponse.data.gallery.isNotEmpty
                              ? const SizedBox(height: 28)
                              : SizedBox(),

                          /// Timing
                          SectionTitle(title: context.l10n.aartiTempleTiming),

                          const SizedBox(height: 14),

                          const TimingCard(),

                          const SizedBox(height: 28),

                          /// Route
                          SectionTitle(title: context.l10n.planYourRoute),

                          const SizedBox(height: 14),

                          const RouteCard(),

                          const SizedBox(height: 28),

                          const ExploreNearbyCard(),

                          // const SizedBox(height: 28),

                          //  const HotelSection(),
                          const SizedBox(height: 28),

                          const RelatedTempleSection(),

                         // const SizedBox(height: 28),



                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
