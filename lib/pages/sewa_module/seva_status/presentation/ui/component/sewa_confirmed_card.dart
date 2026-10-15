import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import '../../../bloc/seva_status_bloc.dart';
import '../../../bloc/seva_status_state.dart';

class SuccessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SevaStatusBloc, SevaStatusState>(
      listener: (context, state) {

      },

        builder: (context, state) {
          final status = state.sevaStatusApiResponse.data.status;
          final sevaName = state.sevaStatusApiResponse.data.sevaName;

          String title;
          String? subtitle;

          switch (status) {
            case "pending":
              title = context.l10n.sevaConfirmed;
              subtitle = context.l10n.yourSevaUnderway(sevaName);
              break;

            case "under_review":
              title = context.l10n.sevaConfirmed;
              subtitle = null;
              break;

            case "completed":
              title = context.l10n.sevaCompleted;
              subtitle = context.l10n.yourSevaCompleted(sevaName);
              break;

            case "time_out":
              title = context.l10n.sevaReturned;
              subtitle = context.l10n.thisSevaCouldNotBeCompleted;
              break;

            case "issue_raised":
              title = context.l10n.sevaConfirmed;
              subtitle = null;
              break;

            case "rejected":
              title = context.l10n.sevaReturned;
              subtitle = context.l10n.thisSevaCouldNotBeCompleted;
              break;

            default:
              title = context.l10n.sevaConfirmed;
              subtitle = null;
          }

          return Container(
            width: context.screenWidth,
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/background_image/feedback_box.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 16),

                Image.asset(
                  "assets/background_image/application_status_namastey.png",
                  width: 44,
                  height: 44,
                ),

                const SizedBox(height: 8),

                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.048,
                    color: AppColor.white,
                  ),
                  textAlign: TextAlign.center,
                ),

                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.031,
                      color: AppColor.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],

                const SizedBox(height: 16),
              ],
            ),
          );
        }
    );
  }
}
