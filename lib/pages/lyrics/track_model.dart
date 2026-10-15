import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/aarti_model.dart';

import 'lyricrepositery/lyric_line.dart';

import 'lyricrepositery/lyric_line.dart';

class Track {
  final String title;
  final String aartiChaliaid;
  final String audioAsset;
  final List<LyricsModel> lyrics;
  final String thumbnail;
  final String htmlText;
  final String? hiHtmLText;
  final String? enHtmlText;
  final String bannerImage;
  final String lyircsImage;
  final String youtubeVideoLink;
  final bool isMpfileAvilable;
  final String godId;
  final String type;
  final String godName;
  final bool isAddedInWishlist; // 👈 new field
  final String? slugUrl;
  final GodModel god;

  Track({

    required this.title,
    required this.aartiChaliaid,
    required this.audioAsset,
    required this.lyrics,
    required this.thumbnail,
    required this.bannerImage,
    required this.lyircsImage,
    required this.isMpfileAvilable,
    required this.youtubeVideoLink,
    required this.htmlText,
    required this.god,
    this.godId = "",
    this.type = "",
    this.godName = "",
    this.isAddedInWishlist = false,
    this.slugUrl,
     this.hiHtmLText,
     this.enHtmlText,
  });

  Track copyWith({
    String? title,
    String? aartiChaliaid,
    String? audioAsset,
    List<LyricsModel>? lyrics,
    String? thumbnail,
    String? htmlText,
    String? bannerImage,
    String? lyircsImage,
    String? youtubeVideoLink,
    bool? isMpfileAvilable,
    String? godId,
    String? type,
    String? godName,
    String? hiHtmLText,
    String? enHtmlText,
    bool? isAddedInWishlist,
    GodModel? god,
    String? slugUrl,
  }) {
    return Track(
      enHtmlText: enHtmlText ?? this.enHtmlText,
      hiHtmLText: hiHtmLText ?? this.hiHtmLText,
      title: title ?? this.title,
      aartiChaliaid: aartiChaliaid ?? this.aartiChaliaid,
      audioAsset: audioAsset ?? this.audioAsset,
      lyrics: lyrics ?? this.lyrics,
      thumbnail: thumbnail ?? this.thumbnail,
      htmlText: htmlText ?? this.htmlText,
      bannerImage: bannerImage ?? this.bannerImage,
      lyircsImage: lyircsImage ?? this.lyircsImage,
      youtubeVideoLink: youtubeVideoLink ?? this.youtubeVideoLink,
      isMpfileAvilable: isMpfileAvilable ?? this.isMpfileAvilable,
      godId: godId ?? this.godId,
      type: type ?? this.type,
      godName: godName ?? this.godName,
      isAddedInWishlist:
      isAddedInWishlist ?? this.isAddedInWishlist,
      slugUrl: slugUrl ?? this.slugUrl,
      god: god ?? this.god,
    );
  }
}