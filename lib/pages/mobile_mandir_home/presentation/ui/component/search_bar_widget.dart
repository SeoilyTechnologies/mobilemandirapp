import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../sant/presentation/bloc/sant_bloc.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';

class SearchBarWidgettr extends StatefulWidget {
  const SearchBarWidgettr({super.key});

  @override
  State<SearchBarWidgettr> createState() => _SearchBarWidgettState();
}

class _SearchBarWidgettState extends State<SearchBarWidgettr> {
  final TextEditingController _controller = TextEditingController();

  bool get _showHint => _controller.text.isEmpty;
  final List<String> godSearchTexts = [
    "Ganesh Aarti",
    "Shiv Chalisa",
    "Krishna Aarti",
    "Hanuman Chalisa",
    "Ram Aarti",
    "Durga Chalisa",
    "Lakshmi Aarti",
    "Shani Chalisa",
    "Vishnu Aarti",
    "Saraswati Chalisa",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,right: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 48,
      child: Row(
        children: [
          SizedBox(
            height: 18,
            child: Image.asset(
              "assets/new_design/icon/Search.png",
              width: 18,
              height: 18,
            ),
          ),
          const SizedBox(width: 8),

          Expanded(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                /// 🔹 Animated Hint Layer (Search + Animated Text)
                if (_showHint)
                 Padding(padding: EdgeInsets.only(top: 4),
                 child:  IgnorePointer(
                   child: Row(
                     children: [
                       Text(
                         context.l10n.searchPrefix,
                         style: AppTextStyle.gilroyMedium(
                           context.screenWidth * 0.035,
                           color: AppColor.newGreyy,
                         ),
                       ),
                       BlinkitAnimatedText(
                         texts: godSearchTexts,
                         style: AppTextStyle.gilroyMedium(
                           context.screenWidth * 0.04,
                           color: AppColor.newGreyy,
                         ),
                       ),
                     ],
                   ),
                 ),),

                /// 🔹 Actual TextField
               Padding(padding: EdgeInsets.only(top: 4),
               child:  TextField(
                 controller: _controller,

                 style: AppTextStyle.gilroyMedium(
                   context.screenWidth * 0.036,
                   color: AppColor.fullBlack,
                 ),
                 onChanged: (value) {
                   setState(() {}); // hint hide/show

                   if (value.trim().isNotEmpty) {
                     context.read<MobileHomeBloc>().add(
                       const MobileHomeEvent.isSearchClear(false),
                     );
                     context.read<MobileHomeBloc>().add(
                       MobileHomeEvent.searchAartiChalisa(query: value),
                     );
                   } else {
                     context.read<MobileHomeBloc>().add(
                       const MobileHomeEvent.clearSearch(),
                     );
                     context.read<MobileHomeBloc>().add(
                       const MobileHomeEvent.clearSearch(),
                     );
                     context.read<MobileHomeBloc>().add(
                       const MobileHomeEvent.isSearchClear(true),
                     );
                   }
                 },
                 decoration: const InputDecoration(

                   border: InputBorder.none,
                   contentPadding: EdgeInsets.symmetric(vertical: 14),
                 ),
               ),)
              ],
            ),
          ),

          const SizedBox(width: 12),
          Container(width: 1.5, height: 28, color: AppColor.newWhite),
          const SizedBox(width: 4),
          const Icon(Icons.mic, color: Colors.black),
        ],
      ),
    );
  }
}
//-------------medium


class SearchBarWidgettMedium extends StatefulWidget {
  const SearchBarWidgettMedium({super.key});

  @override
  State<SearchBarWidgettMedium> createState() => _SearchBarWidgettStateMedium();
}

class _SearchBarWidgettStateMedium extends State<SearchBarWidgettMedium> {
  final TextEditingController _controller = TextEditingController();

  bool get _showHint => _controller.text.isEmpty;
  final List<String> godSearchTexts = [
    "Ganesh Aarti",
    "Shiv Chalisa",
    "Krishna Aarti",
    "Hanuman Chalisa",
    "Ram Aarti",
    "Durga Chalisa",
    "Lakshmi Aarti",
    "Shani Chalisa",
    "Vishnu Aarti",
    "Saraswati Chalisa",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 72,
      child: Row(
        children: [
          SizedBox(
            height: 34,
            child: Image.asset(
              "assets/new_design/icon/Search.png",
              width: 34,
              height: 34,
            ),
          ),
          const SizedBox(width: 8),

          Expanded(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                /// 🔹 Animated Hint Layer (Search + Animated Text)
                if (_showHint)
                  IgnorePointer(
                    child: Row(
                      children: [
                        Text(
                          context.l10n.searchPrefix,
                          style: AppTextStyle.gilroySemiBold(
                            context.screenWidth * 0.03,
                            color: AppColor.appBlack,
                          ),
                        ),
                        BlinkitAnimatedText(
                          texts: godSearchTexts,
                          style: AppTextStyle.gilroySemiBold(
                            context.screenWidth * 0.03,
                            color: AppColor.appBlack,
                          ),
                        ),
                      ],
                    ),
                  ),

                /// 🔹 Actual TextField
                TextField(
                  controller: _controller,
                  style: AppTextStyle.regular(
                    context.screenWidth * 0.036,
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    setState(() {}); // hint hide/show

                    if (value.trim().isNotEmpty) {
                      context.read<MobileHomeBloc>().add(
                        MobileHomeEvent.searchAartiChalisa(query: value),
                      );
                    } else {
                      context.read<MobileHomeBloc>().add(
                        const MobileHomeEvent.clearSearch(),
                      );
                    }
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),
          // Container(width: 1.5, height: 20, color: AppColor.newWhite),
          //const SizedBox(width: 2),
          //const Icon(Icons.mic, color: Colors.black),
        ],
      ),
    );
  }
}

//----------------------------------------large

class SearchBarWidgettLarge extends StatefulWidget {
  const SearchBarWidgettLarge({super.key});

  @override
  State<SearchBarWidgettLarge> createState() => _SearchBarWidgettStateLarge();
}

class _SearchBarWidgettStateLarge extends State<SearchBarWidgettLarge> {
  final TextEditingController _controller = TextEditingController();

  bool get _showHint => _controller.text.isEmpty;
  final List<String> godSearchTexts = [
    "Ganesh Aarti",
    "Shiv Chalisa",
    "Krishna Aarti",
    "Hanuman Chalisa",
    "Ram Aarti",
    "Durga Chalisa",
    "Lakshmi Aarti",
    "Shani Chalisa",
    "Vishnu Aarti",
    "Saraswati Chalisa",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(6),
        ),
        height: context.screenHeight * 0.07,
        child: Row(
          children: [
            SizedBox(
              height: 34,
              child: Image.asset(
                "assets/new_design/icon/Search.png",
                width: 34,
                height: 34,
              ),
            ),
            const SizedBox(width: 8),

            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  /// 🔹 Animated Hint Layer (Search + Animated Text)
                  if (_showHint)
                    IgnorePointer(
                      child: Row(
                        children: [
                          Text(
                            context.l10n.searchPrefix,
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.026,
                              color: AppColor.appBlack,
                            ),
                          ),
                          BlinkitAnimatedText(
                            texts: godSearchTexts,
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.02,
                              color: AppColor.appBlack,
                            ),
                          ),
                        ],
                      ),
                    ),

                  /// 🔹 Actual TextField
                  TextField(
                    controller: _controller,
                    style: AppTextStyle.regular(
                      context.screenWidth * 0.036,
                      color: Colors.black,
                    ),
                    onChanged: (value) {
                      setState(() {}); // hint hide/show

                      if (value.trim().isNotEmpty) {
                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.searchAartiChalisa(query: value),
                        );
                      } else {
                        context.read<MobileHomeBloc>().add(
                          const MobileHomeEvent.clearSearch(),
                        );
                      }
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),
            // Container(width: 1.5, height: 20, color: AppColor.newWhite),
            //const SizedBox(width: 2),
            //const Icon(Icons.mic, color: Colors.black),
          ],
        ),
      ),
    );
  }
}

///------------large landscape

class SearchBarWidgettLargeLandScape extends StatefulWidget {
  const SearchBarWidgettLargeLandScape({super.key});

  @override
  State<SearchBarWidgettLargeLandScape> createState() => _SearchBarWidgettStateLargeLandScape();
}

class _SearchBarWidgettStateLargeLandScape extends State<SearchBarWidgettLargeLandScape> {
  final TextEditingController _controller = TextEditingController();

  bool get _showHint => _controller.text.isEmpty;
  final List<String> godSearchTexts = [
    "Ganesh Aarti",
    "Shiv Chalisa",
    "Krishna Aarti",
    "Hanuman Chalisa",
    "Ram Aarti",
    "Durga Chalisa",
    "Lakshmi Aarti",
    "Shani Chalisa",
    "Vishnu Aarti",
    "Saraswati Chalisa",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(6),
        ),
        height: context.screenHeight * 0.07,
        child: Row(
          children: [
            SizedBox(
              height: 34,
              child: Image.asset(
                "assets/new_design/icon/Search.png",
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(width: 8),

            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  /// 🔹 Animated Hint Layer (Search + Animated Text)
                  if (_showHint)
                    IgnorePointer(
                      child: Row(
                        children: [
                          Text(
                            context.l10n.searchPrefix,
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.02,
                              color: AppColor.appBlack,
                            ),
                          ),
                          BlinkitAnimatedTextLandScapelarge(
                            texts: godSearchTexts,
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.01,
                              color: AppColor.appBlack,
                            ),
                          ),
                        ],
                      ),
                    ),

                  /// 🔹 Actual TextField
                  TextField(
                    controller: _controller,
                    style: AppTextStyle.regular(
                      context.screenWidth * 0.025,
                      color: Colors.black,
                    ),
                    onChanged: (value) {
                      setState(() {}); // hint hide/show

                      if (value.trim().isNotEmpty) {
                        context.read<MobileHomeBloc>().add(
                          const MobileHomeEvent.isSearchClear(false),
                        );
                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.searchAartiChalisa(query: value),
                        );
                      } else {
                        context.read<MobileHomeBloc>().add(
                          const MobileHomeEvent.clearSearch(),
                        );
                        context.read<MobileHomeBloc>().add(
                          const MobileHomeEvent.clearSearch(),
                        );
                        context.read<MobileHomeBloc>().add(
                          const MobileHomeEvent.isSearchClear(true),
                        );
                      }
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),
            // Container(width: 1.5, height: 20, color: AppColor.newWhite),
            //const SizedBox(width: 2),
            //const Icon(Icons.mic, color: Colors.black),
          ],
        ),
      ),
    );
  }
}


class SantSearchBarWidgett extends StatelessWidget {
  const SantSearchBarWidgett({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SantBloc, SantState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.grey),
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(6),
          ),
          height: 48,
          child: Row(
            children: [
              SizedBox(
                height: 18,
                child: Image.asset(
                  "assets/new_design/icon/Search.png",
                  width: 18,
                  height: 18,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  style: AppTextStyle.regular(
                    context.screenWidth * 0.036,
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      context.read<SantBloc>().add(
                        SantEvent.filterByName(value),
                      );
                    } else {
                      context.read<SantBloc>().add(
                        const SantEvent.getAllSantList(),
                      );
                    }
                  },
                  decoration: InputDecoration(
                    hintText: context.l10n.searchSant,
                    hintStyle: AppTextStyle.regular(
                      context.screenWidth * 0.036,
                      color: AppColor.newGreyy,
                    ),
                    //   prefixIcon: SizedBox(height: 18,child: Image.asset("assets/new_design/icon/Search.png",width: 18,height: 18,),),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              SizedBox(width: 8),
              //  Container(width: 1.5, height: 20, color: AppColor.newWhite),
              SizedBox(width: 2),
              // 🔴 Mic Icon Added
              //   Icon(Icons.mic, color: Colors.black),
            ],
          ),
        );
      },
    );
  }
}

class SantSearchBarWidgettMedium extends StatelessWidget {
  const SantSearchBarWidgettMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SantBloc, SantState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.grey),
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(6),
          ),
          height: 62,
          child: Row(
            children: [
              SizedBox(
                height: 32,
                child: Image.asset(
                  "assets/new_design/icon/Search.png",
                  width: 32,
                  height: 32,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  style: AppTextStyle.regular(
                    context.screenWidth * 0.036,
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      context.read<SantBloc>().add(
                        SantEvent.filterByName(value),
                      );
                    } else {
                      context.read<SantBloc>().add(
                        const SantEvent.getAllSantList(),
                      );
                    }
                  },
                  decoration: InputDecoration(
                    hintText: context.l10n.searchSant,
                    hintStyle: AppTextStyle.regular(
                      context.screenWidth * 0.036,
                      color: AppColor.newGreyy,
                    ),
                    //   prefixIcon: SizedBox(height: 18,child: Image.asset("assets/new_design/icon/Search.png",width: 18,height: 18,),),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 9),
                  ),
                ),
              ),
              SizedBox(width: 8),
              //  Container(width: 1.5, height: 20, color: AppColor.newWhite),
              SizedBox(width: 2),
              // 🔴 Mic Icon Added
              //   Icon(Icons.mic, color: Colors.black),
            ],
          ),
        );
      },
    );
  }
}


class SantSearchBarWidgettLargeLandScape extends StatelessWidget {
  const SantSearchBarWidgettLargeLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SantBloc, SantState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.grey),
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(6),
          ),
          height: 52,
          child: Row(

            children: [
              SizedBox(
                height: 18,
                child: Image.asset(
                  "assets/new_design/icon/Search.png",
                  width: 18,
                  height: 18,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  style: AppTextStyle.regular(
                    context.screenWidth * 0.02,
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      context.read<SantBloc>().add(
                        SantEvent.filterByName(value),
                      );
                    } else {
                      context.read<SantBloc>().add(
                        const SantEvent.getAllSantList(),
                      );
                    }
                  },
                  decoration: InputDecoration(
                    hintText: context.l10n.searchSant,
                    hintStyle: AppTextStyle.regular(
                      context.screenWidth * 0.02,
                      color: AppColor.newGreyy,
                    ),
                    //   prefixIcon: SizedBox(height: 18,child: Image.asset("assets/new_design/icon/Search.png",width: 18,height: 18,),),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              SizedBox(width: 8),
              //  Container(width: 1.5, height: 20, color: AppColor.newWhite),
              SizedBox(width: 2),
              // 🔴 Mic Icon Added
              //   Icon(Icons.mic, color: Colors.black),
            ],
          ),
        );
      },
    );
  }
}





// class BlinkitAnimatedText extends StatefulWidget {
//   final List<String> texts;
//   final TextStyle style;
//
//   const BlinkitAnimatedText({
//     super.key,
//     required this.texts,
//     required this.style,
//   });
//
//   @override
//   State<BlinkitAnimatedText> createState() => _BlinkitAnimatedTextState();
// }
//
// class _BlinkitAnimatedTextState extends State<BlinkitAnimatedText> {
//   int textIndex = 0;
//   int wordIndex = 1;
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation();
//   }
//
//   void startAnimation() async {
//     while (mounted) {
//       await Future.delayed(const Duration(milliseconds: 700));
//
//       final words = widget.texts[textIndex].split(" ");
//
//       if (wordIndex < words.length) {
//         setState(() {
//           wordIndex++;
//         });
//       } else {
//         await Future.delayed(const Duration(milliseconds: 1000));
//
//         setState(() {
//           textIndex = (textIndex + 1) % widget.texts.length;
//           wordIndex = 1;
//         });
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final words = widget.texts[textIndex].split(" ");
//     final text = words.take(wordIndex).join(" ");
//
//     return AnimatedSwitcher(
//       duration: const Duration(milliseconds: 350),
//       transitionBuilder: (child, animation) {
//         return ClipRect(
//           child: SlideTransition(
//             position: Tween(
//               begin: const Offset(-0.25, 0),
//               end: Offset.zero,
//             ).animate(animation),
//             child: FadeTransition(
//               opacity: animation,
//               child: child,
//             ),
//           ),
//         );
//       },
//       child: Text(
//         text,
//         key: ValueKey(text),
//         style: widget.style,
//         maxLines: 1,
//         overflow: TextOverflow.clip,
//       ),
//     );
//   }
// }

// class BlinkitAnimatedText extends StatefulWidget {
//   final List<String> texts;
//   final TextStyle style;
//
//   const BlinkitAnimatedText({
//     super.key,
//     required this.texts,
//     required this.style,
//   });
//
//   @override
//   State<BlinkitAnimatedText> createState() => _BlinkitAnimatedTextState();
// }
//
// class _BlinkitAnimatedTextState extends State<BlinkitAnimatedText> {
//   int _index = 0;
//   bool _leftToRight = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _start();
//   }
//
//   void _start() async {
//     while (mounted) {
//       await Future.delayed(const Duration(seconds: 3));
//       if (!mounted) break;
//
//       setState(() {
//         _index = (_index + 1) % widget.texts.length;
//         _leftToRight = !_leftToRight;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       duration: const Duration(milliseconds: 800),
//       transitionBuilder: (child, animation) {
//         final beginOffset = _leftToRight
//             ? const Offset(1, 0)
//             : const Offset(-1, 0);
//
//         return ClipRect(
//           child: SlideTransition(
//             position: Tween<Offset>(
//               begin: beginOffset,
//               end: Offset.zero,
//             ).animate(animation),
//             child: FadeTransition(opacity: animation, child: child),
//           ),
//         );
//       },
//       child: Text(
//         '"${widget.texts[_index]}"',
//
//         key: ValueKey(widget.texts[_index]),
//         style: AppTextStyle.gilroySemiBold(
//           context.screenWidth * 0.035,
//           color: AppColor.fullBlack,
//         ),
//
//         maxLines: 1,
//         overflow: TextOverflow.clip,
//       ),
//     );
//   }
// }


///============================landscape large

class BlinkitAnimatedTextLandScapelarge extends StatefulWidget {
  final List<String> texts;
  final TextStyle style;

  const BlinkitAnimatedTextLandScapelarge({
    super.key,
    required this.texts,
    required this.style,
  });

  @override
  State<BlinkitAnimatedTextLandScapelarge> createState() => _BlinkitAnimatedTextStateLandScapeLarge();
}

class _BlinkitAnimatedTextStateLandScapeLarge extends State<BlinkitAnimatedTextLandScapelarge> {
  int _index = 0;
  bool _leftToRight = true;

  @override
  void initState() {
    super.initState();
    _start();
  }

  void _start() async {
    while (mounted) {
      await Future.delayed(const Duration(seconds: 3));
      if (!mounted) break;

      setState(() {
        _index = (_index + 1) % widget.texts.length;
        _leftToRight = !_leftToRight;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 1000),
      transitionBuilder: (child, animation) {
        final beginOffset = _leftToRight
            ? const Offset(1, 0)
            : const Offset(-1, 0);

        return ClipRect(
          child: SlideTransition(
            position: Tween<Offset>(
              begin: beginOffset,
              end: Offset.zero,
            ).animate(animation),
            child: FadeTransition(opacity: animation, child: child),
          ),
        );
      },
      child: Text(
        '"${widget.texts[_index]}"',

        key: ValueKey(widget.texts[_index]),
        style: AppTextStyle.gilroySemiBold(
          context.screenWidth * 0.02,
          color: AppColor.fullBlack,
        ),

        maxLines: 1,
        overflow: TextOverflow.clip,
      ),
    );
  }
}


class BlinkitAnimatedText extends StatefulWidget {
  final List<String> texts;
  final TextStyle style;

  const BlinkitAnimatedText({
    super.key,
    required this.texts,
    required this.style,
  });

  @override
  State<BlinkitAnimatedText> createState() => _BlinkitAnimatedTextState();
}

class _BlinkitAnimatedTextState extends State<BlinkitAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  int _index = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _startAnimation();
  }

  Future<void> _startAnimation() async {
    while (mounted) {
      _controller.forward(from: 0);

      // reveal complete hone ka wait
      await Future.delayed(const Duration(milliseconds: 1200));

      // text hold
      await Future.delayed(const Duration(milliseconds: 1600));

      if (!mounted) return;

      setState(() {
        _index = (_index + 1) % widget.texts.length;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return ClipRect(
          child: Align(
            alignment: Alignment.centerLeft,
            widthFactor: _controller.value,
            child: Text(
              '"${widget.texts[_index]}"',
              style: widget.style,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}