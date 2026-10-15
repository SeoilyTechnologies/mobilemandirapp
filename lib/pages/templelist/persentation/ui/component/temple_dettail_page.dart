import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../temple_detail/bloc/temple_detail_bloc.dart';
import '../../../../temple_detail/bloc/temple_detail_state.dart';
import 'package:flutter_html/flutter_html.dart';



class TempleDetailPage extends StatelessWidget {
  const TempleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TempleDetailBloc, TempleDetailState>(
      listener: (context, state) {
        // Optional actions when state changes
        // Example:
        // if (!state.isLoading) {
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text("Temple Loaded")),
        //   );
        // }
      },

      builder: (context, state) {
        if (state.isLoading || state.temple == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final temple = state.temple!;

        return Scaffold(
          body: Stack(
            children: [
              // Banner Image
              SizedBox(
                height: 330,
                width: double.infinity,
                child: temple.templeImage.isNotEmpty
                    ? Image.network(
                  temple.templeImage,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return _bannerPlaceholder();
                  },
                )
                    : _bannerPlaceholder(),
              ),


              // Gradient Overlay
              Container(
                height: 330,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black54, Colors.transparent],
                  ),
                ),
              ),

              // Main Content
              SafeArea(
                child: Column(
                  children: [
                    // Top Bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _topButton(Icons.arrow_back, () => Navigator.pop(context)),

                        ],
                      ),
                    ),

                    const Spacer(),

                    // White Card Section
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 18),

                              // Name + Thumbnail
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          temple.templeName,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on, size: 14, color: Colors.grey),
                                            const SizedBox(width: 6),
                                            Expanded(
                                              child: Text(
                                                "${temple.templeLocation}, ${temple.district}, ${temple.state}",
                                                style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: temple.templeImage.isNotEmpty
                                ? Image.network(
                              temple.templeImage,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return _smallImagePlaceholder();
                              },
                            )
                                : _smallImagePlaceholder(),
                          ),
                        ),


                        ],
                              ),

                              const SizedBox(height: 14),

                              // Address Section
                              Row(
                                children: [
                                  const Icon(Icons.place, size: 16, color: Colors.redAccent),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                      temple.address,
                                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                                    ),
                                  )
                                ],
                              ),

                              const SizedBox(height: 20),

                              // About
                              Text(
                                context.l10n.aboutTemple,
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),


                              Html(
                                data: temple.templeDescription,

                              ),


                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Bottom Button
          // bottomNavigationBar: Container(
          //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.redAccent,
          //       padding: const EdgeInsets.symmetric(vertical: 15),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: Text(
          //       "Plan Your Visit",
          //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
        );
      },
    );
  }

  Widget _bannerPlaceholder() {
    return Container(
      height: 330,
      width: double.infinity,
      color: Colors.grey.shade300,
      child: const Icon(
        Icons.image_not_supported,
        size: 80,
        color: Colors.grey,
      ),
    );
  }

  Widget _smallImagePlaceholder() {
    return Container(
      height: 60,
      width: 60,
      color: Colors.grey.shade300,
      child: const Icon(
        Icons.image_not_supported,
        color: Colors.grey,
        size: 26,
      ),
    );
  }

  Widget _topButton(IconData icon, VoidCallback onTap) {
    return Material(
      color: Colors.white.withOpacity(0.85),
      shape: const CircleBorder(),
      elevation: 3,
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: Colors.black87),
      ),
    );
  }
}
