import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class TaskRewardCard extends StatelessWidget {
  final String title;
  final int currentProgress;
  final int totalProgress;
  final int coins;
  final String buttonText;
  final String iconPath;
  final bool isCompleted;
  final VoidCallback? onTap;

  const TaskRewardCard({
    super.key,
    required this.title,
    required this.currentProgress,
    required this.totalProgress,
    required this.coins,
    required this.buttonText,
    required this.iconPath,
    required this.isCompleted,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return TaskRewardCardSmall(
        title: title,
        currentProgress: currentProgress,
        totalProgress: totalProgress,
        coins: coins,
        buttonText: buttonText,
        iconPath: iconPath,
        isCompleted: isCompleted,
        onTap: onTap,
      );
    } else {
      return TaskRewardCardMedium(
        title: title,
        currentProgress: currentProgress,
        totalProgress: totalProgress,
        coins: coins,
        buttonText: buttonText,
        iconPath: iconPath,
        isCompleted: isCompleted,
        onTap: onTap,
      );
    }
  }
}

class TaskRewardCardSmall extends StatelessWidget {
  final String title;
  final int currentProgress;
  final int totalProgress;
  final int coins;
  final String buttonText;
  final String iconPath;
  final bool isCompleted;
  final VoidCallback? onTap;

  const TaskRewardCardSmall({
    super.key,
    required this.title,
    required this.currentProgress,
    required this.totalProgress,
    required this.coins,
    required this.buttonText,
    required this.iconPath,
    required this.isCompleted,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final progress = currentProgress / totalProgress;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: const EdgeInsets.only(left: 14,top: 8,bottom: 8,right: 4),
      decoration: BoxDecoration(
        color: const Color(0xffF8EFE5),
        border: Border.all(color: const Color(0xffE8C7A8), width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //icons
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: const Color(0xffDCA61A),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Center(
                child: Image.asset(
                  iconPath,
                  height: 18,
                  width: 18,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.034,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: const Color(0xffF2D1AF),
                          valueColor: const AlwaysStoppedAnimation(
                            Color(0xff7B3A00),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Text(
                      "$currentProgress/$totalProgress",
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.029,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 18),
         Padding(padding: EdgeInsets.only(right: 4),
         child:  Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.end,

           children: <Widget>[
             Container(
               padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
               decoration: BoxDecoration(
                 color: Color(0xff6F3200),
                 borderRadius: BorderRadius.circular(20),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Image.asset(
                     "assets/new_design/icon/earn_ponts.png",
                     height: 14,
                     width: 14,
                   ),
                   const SizedBox(width: 4),
                   Text(
                     "$coins ${context.l10n.coins}",
                     style: AppTextStyle.gilroyMedium(
                       context.screenWidth * 0.029,
                       color: Colors.white,
                     ),
                   ),
                 ],
               ),
             ),
             const SizedBox(height: 12),
             Align(
               alignment: Alignment.centerRight,
               child: GestureDetector(
                 onTap: onTap,
                 child: Container(
                   padding: const EdgeInsets.only(
                       left: 6,
                       right: 0,
                       top: 2,
                     bottom: 2
                   ),

                   decoration: BoxDecoration(
                     color: isCompleted
                         ? const Color(0xff56C000)
                         : Colors.white,
                     borderRadius: BorderRadius.circular(2),
                     border: isCompleted
                         ? null
                         : Border.all(
                       color: const Color(0xff9A560D),
                       width: 1.1,
                     ),
                   ),
                   child: Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text(
                         buttonText,
                         style: AppTextStyle.gilroyBold(
                           context.screenWidth*0.034,
                           color: isCompleted
                               ? Colors.white
                               : const Color(0xff8A4300),
                         ),
                       ),

                       const SizedBox(width: 2),
                       Icon(
                         Icons.arrow_forward,
                         size: 18,
                         color: isCompleted
                             ? Colors.white
                             : const Color(0xff8A4300),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),)
        ],
      ),
    );
  }
}

class TaskRewardCardMedium extends StatelessWidget {
  final String title;
  final int currentProgress;
  final int totalProgress;
  final int coins;
  final String buttonText;
  final String iconPath;
  final bool isCompleted;
  final VoidCallback? onTap;

  const TaskRewardCardMedium({
    super.key,
    required this.title,
    required this.currentProgress,
    required this.totalProgress,
    required this.coins,
    required this.buttonText,
    required this.iconPath,
    required this.isCompleted,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final progress = currentProgress / totalProgress;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: const EdgeInsets.only(left: 14,top: 8,bottom: 8,right: 4),
      decoration: BoxDecoration(
        color: const Color(0xffF8EFE5),
        border: Border.all(color: const Color(0xffE8C7A8), width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //icons
          Container(
            height: context.screenHeight*0.047,
            width:context.screenHeight*0.047,
            decoration: BoxDecoration(
              color: const Color(0xffDCA61A),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Center(
                child: Image.asset(
                  iconPath,
                  height: 18,
                  width: 18,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.027,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 3),

                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: const Color(0xffF2D1AF),
                          valueColor: const AlwaysStoppedAnimation(
                            Color(0xff7B3A00),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Text(
                      "$currentProgress/$totalProgress",
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.023,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 18),
          Padding(padding: EdgeInsets.only(right: 4),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xff6F3200),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/new_design/icon/earn_ponts.png",
                        height: 14,
                        width: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "$coins ${context.l10n.coins}",
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 6,
                          right: 0,
                          top: 2,
                          bottom: 2
                      ),

                      decoration: BoxDecoration(
                        color: isCompleted
                            ? const Color(0xff56C000)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(2),
                        border: isCompleted
                            ? null
                            : Border.all(
                          color: const Color(0xff9A560D),
                          width: 1.1,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            buttonText,
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.023,
                              color: isCompleted
                                  ? Colors.white
                                  : const Color(0xff8A4300),
                            ),
                          ),

                          const SizedBox(width: 2),
                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: isCompleted
                                ? Colors.white
                                : const Color(0xff8A4300),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),)
        ],
      ),
    );
  }
}
