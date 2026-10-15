import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_detail_response.dart';
import 'package:mandirapp/pages/seva_history/presentation/bloc/seva_subscription_detail_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_response.dart';
import 'component/subscription_banner_card.dart';
import 'component/subscription_info_card.dart';
import 'component/subscription_payment_breakdown_card.dart';
import 'component/subscription_progress_card.dart';
import 'component/subscription_schedule_card.dart';

class SevaSubscriptionDetailPage extends StatefulWidget {
  final String? subscriptionId;

  const SevaSubscriptionDetailPage({
    super.key,
    this.subscriptionId,
  });

  @override
  State<SevaSubscriptionDetailPage> createState() =>
      _SevaSubscriptionDetailPageState();
}

class _SevaSubscriptionDetailPageState
    extends State<SevaSubscriptionDetailPage> {
  late final SevaSubscriptionDetailBloc _detailBloc;
  String _effectiveId = '';
  SevaSubscriptionItem? _passedItem;
  bool _hasDispatched = false;

  @override
  void initState() {
    super.initState();
    _detailBloc = SevaSubscriptionDetailBloc();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasDispatched) {
      _hasDispatched = true;
      final args = ModalRoute.of(context)?.settings.arguments;
      if (widget.subscriptionId != null && widget.subscriptionId!.isNotEmpty) {
        _effectiveId = widget.subscriptionId!;
      } else if (args is String) {
        _effectiveId = args;
      } else if (args is Map) {
        if (args['id'] != null) {
          _effectiveId = args['id'].toString();
        }
        if (args['item'] is SevaSubscriptionItem) {
          _passedItem = args['item'] as SevaSubscriptionItem;
        }
      }

      if (_effectiveId.isNotEmpty) {
        _detailBloc.add(GetSubscriptionDetailEvent(id: _effectiveId));
      } else {
        _detailBloc.add(GetSubscriptionDetailEvent(id: ''));
      }
    }
  }

  @override
  void dispose() {
    _detailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider.value(
      value: _detailBloc,
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F5F7),
        appBar: MandirAppBar(
          title: context.l10n.sevaSubscription,
          onBackTap: () {
            Navigator.pop(context);
          },
        ),
        body: BlocBuilder<SevaSubscriptionDetailBloc, SevaSubscriptionDetailState>(
          builder: (context, state) {
            if (state is SevaSubscriptionDetailLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF793C01),
                ),
              );
            }

            if (state is SevaSubscriptionDetailLoaded) {
              return _buildContent(
                data: state.data,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              );
            }

            if (state is SevaSubscriptionDetailError) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(0.064 * screenWidth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_off_rounded,
                        size: 0.16 * screenWidth,
                        color: const Color(0xFF793C01),
                      ),
                      SizedBox(height: 0.0197 * screenHeight),
                      Text(
                        state.message.isNotEmpty
                            ? state.message
                            : context.l10n.subscriptionDetailsNotFound,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyBold(
                          0.045 * screenWidth,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 0.0246 * screenHeight),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF793C01),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              0.0213 * screenWidth,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.064 * screenWidth,
                            vertical: 0.0148 * screenHeight,
                          ),
                        ),
                        onPressed: () {
                          if (_effectiveId.isNotEmpty) {
                            _detailBloc.add(
                              GetSubscriptionDetailEvent(id: _effectiveId),
                            );
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        child: Text(
                          _effectiveId.isNotEmpty ? context.l10n.retry : context.l10n.goBack,
                          style: AppTextStyle.gilroySemiBold(
                            0.0373 * screenWidth,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget _buildContent({
    required SevaSubscriptionDetailData data,
    required double screenWidth,
    required double screenHeight,
  }) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 0.0234 * screenHeight),

          /// 1. Top Banner Card (Gau Seva, Active, Daily/Weekly, Illustration)
          SubscriptionBannerCard(
            data: data,
            fallbackIcon: _passedItem?.service.icon,
          ),
          SizedBox(height: 0.0246 * screenHeight),

          /// 2. Seva Progress Card (0/30, Progress Bar, Completed/Upcoming/Missed)
          SubscriptionProgressCard(summary: data.summary),
          SizedBox(height: 0.0246 * screenHeight),

          /// 3. Subscription Details Card (Donor Name, Phone, Frequency, Dates, Cycle)
          SubscriptionInfoCard(data: data),
          SizedBox(height: 0.0332 * screenHeight),

          /// 4. Payment Breakdown Card (Seva Amount, Platform Fee, GST, Total Per Cycle)
          SubscriptionPaymentBreakdownCard(data: data),
          SizedBox(height: 0.0332 * screenHeight),

          /// 5. Seva Schedule Card (Timeline, Circular status icons, Status pill boxes, Full schedule toggle)
          SubscriptionScheduleCard(occurrences: data.occurrences),
          SizedBox(height: 0.0369 * screenHeight),
        ],
      ),
    );
  }
}
