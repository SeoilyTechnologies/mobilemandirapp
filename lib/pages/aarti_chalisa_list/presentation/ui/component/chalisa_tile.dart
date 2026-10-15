import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/component/wishlist_icon_button.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../../bloc/aarti_chalisa_lsit_bloc.dart';
import '../../bloc/aarti_chalisa_lsit_event.dart';

class ChalisaTile extends StatelessWidget {
  final String image;
  final String title;
  final String deity;
  final String time;
  final String verses;
  final String itemid;
  final bool isCurrentPlaying;
  final bool isOnlyForLyrics;
  final bool isAddedInWishList;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onMediaPlay;

  const ChalisaTile({
    super.key,
    required this.image,
    required this.title,
    required this.deity,
    required this.time,
    required this.itemid,
    required this.verses,
    this.isCurrentPlaying = false,
    this.isAddedInWishList = false,
    this.isOnlyForLyrics = false,
    this.onBookmarkTap,
    this.onMediaPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "$image",
              height: 55,
              width: 55,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.medium(
                    context.screenWidth * 0.034,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  deity,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      time,
                      style: AppTextStyle.medium(
                        context.screenWidth * 0.034,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      verses,
                      style: AppTextStyle.lightText(
                        context.screenWidth * 0.034,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 4),
              Row(
                spacing: 8,
                children: <Widget>[
                  WishlistIconButton(
                    onTap: () {
                      BlocProvider.of<WishlistBloc>(context).add(
                        ToggleWishlist(
                          itemModel: "aartichalisadata",
                          itemId: itemid,
                        ),
                      );
                      BlocProvider.of<AartiChalisaLsitBloc>(context).add(
                        GetAartiChalisaByType(
                          BlocProvider.of<AartiChalisaLsitBloc>(
                            context,
                          ).state.type,
                        ),
                      );
                    },
                    isAdded: isAddedInWishList,
                  ),

                  // InkWell(
                  //   onTap: (){
                  //     BlocProvider.of<WishlistBloc>(context).add(ToggleWishlist(itemModel: "aartichalisadata",itemId: itemid));
                  //   },
                  //   child:  Container(
                  //     padding: const EdgeInsets.all(4),
                  //     decoration: const BoxDecoration(
                  //       color: Color(0xFFFEECEB),
                  //       shape: BoxShape.circle,
                  //     ),
                  //     child:  Icon(Icons.favorite_border),
                  //   ),
                  // ),
                  InkWell(
                    onTap: onMediaPlay,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFEECEB),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isCurrentPlaying ? Icons.play_circle : Icons.play_arrow,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),

              ///iska on top pass kro dynamic, kabhi kabhi nahi bhi aayega
              InkWell(
                onTap: onBookmarkTap,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.lyrics_rounded),
                ),
              ),
              SizedBox(height: 4),
            ],
          ),
        ],
      ),
    );
  }
}
