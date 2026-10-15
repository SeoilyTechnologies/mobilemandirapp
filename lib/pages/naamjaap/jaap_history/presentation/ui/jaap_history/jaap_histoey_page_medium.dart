import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/pages/naamjaap/jaap_history/presentation/bloc/jaap_history_bloc.dart';
import 'package:mandirapp/pages/naamjaap/jaap_history/presentation/bloc/jaap_history_state.dart';

import '../../../../../../common/routes/routes.dart';
import '../../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../jaappage/presentation/bloc/jaap_page_bloc.dart';
import '../../../../jaappage/presentation/bloc/jaap_page_event.dart';
import '../../../../jaappage_one/data/entity/jaap_history/jaap_history_response.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class JaapHistoryPageMedium extends StatelessWidget {
  const JaapHistoryPageMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapHistoryBloc, JaapHistoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: MandirAppBar(
            title: context.l10n.jaapMalaHistory,
            onBackTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                context.read<AppBloc>().add(TriggerAppEvent(0));
              }
            },
          ),
          body: Container(
            // color: const Color(0xFFF6EFE7),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/new_design/background/jaap_history_background.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 12),

                /// 🔹 Filters Row
            //    _filterRow(context, state),

                const SizedBox(height: 14),

                /// 🔹 Total Count
                _totalCount(context, state.totalCount),

                const SizedBox(height: 16),

                /// 🔹 List
                Expanded(
                  child: state.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : Builder(
                    builder: (context) {
                      final completedSessions = state.sessions;

                      return ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: completedSessions.length,
                        itemBuilder: (context, index) {
                          final item = completedSessions[index];
                          return _historyCard(item,context);
                        },
                      );
                    },
                  ),
                ),

                /// 🔹 Share Button
              SafeArea(child:   Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: _shareButton(context, state),
              ),)

              ],
            ),
          ),
        );
      },
    );
  }

  Widget _filterRow(BuildContext context, JaapHistoryState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _filterButton(
            title: context.l10n.all,
            isSelected: state.startDate == null && state.endDate == null,
            onTap: () {
              context.read<JaapHistoryBloc>().add(const ClearFilter());
              BlocProvider.of<JaapHistoryBloc>(
                context,
              ).add(const LoadHistory());
            },
          ),
          const SizedBox(width: 8),
          _filterButton(
            title: _formatDate(state.startDate) ?? context.l10n.startDate,
            onTap: () => _pickStartDate(context, state),
          ),
          const SizedBox(width: 8),
          _filterButton(
            title: _formatDate(state.endDate) ?? context.l10n.endDate,
            onTap: () => _pickEndDate(context, state),
          ),
        ],
      ),
    );
  }

  String? _formatDate(DateTime? date) {
    if (date == null) return null;
    return "${date.day}/${date.month}/${date.year}";
  }

  Widget _filterButton({
    required String title,
    bool isSelected = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF8B4A00) : Colors.transparent,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: const Color(0xFF8B4A00)),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontFamily: AppFont.gilroyMedium,
                color: isSelected ? Colors.white : AppColor.newsecondaruy,
                // fontWeight: FontWeight.w500,
              ),
            ),
            if (title != "All") ...[
              const SizedBox(width: 6),
              const Icon(
                Icons.calendar_today,
                size: 22,
                color: Color(0xFF8B4A00),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _totalCount(BuildContext context, int count) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF8B4A00),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          "${context.l10n.totalCount} $count",
          style: TextStyle(
            fontSize: 22,
            fontFamily: AppFont.gilroyMedium,
            color: Colors.white,
            // fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _historyCard(JaapSession item, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (item.isCompleted) return;

        context.read<JaapPageBloc>().add(
          const JaapPageEvent.completeReset(),
        );

        Navigator.pushNamed(
          context,
          AppRoutes.JAAP_PAGE,
          arguments: {
            "sessionId": item.sessionId,
            "activeSessionId": item.sessionId,
            "totalCount": item.targetCount,
            "currentCount": item.currentCount,
            "duration": item.durationSeconds,
            "createdAt": item.createdAt,
            "mantraId": item.mantra?.id ?? "",
            "mantraTitle": item.mantra?.getName(Localizations.localeOf(context).languageCode == 'hi') ?? "",
            "mantraLyrics": item.mantra?.getLyrics(Localizations.localeOf(context).languageCode == 'hi') ?? "",
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _dateChip(item.dateLabel),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Image.asset(
                        "assets/new_design/icon/timer_watch.png",
                        width: 18,
                        height: 18,
                        color: AppColor.fullBlack,
                      ),
                      const SizedBox(width: 6),

                      Text(
                        item.timeRange,
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: AppFont.gilroyRegular,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Text(
                    item.durationText,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: AppFont.gilroySemiBold,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  item.getMantraName(context),
                  style: const TextStyle(
                    fontSize: 22,
                    fontFamily: AppFont.gilroySemiBold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "${item.currentCount}/${item.targetCount}",
                  style: const TextStyle(
                    color: AppColor.newsecondaruy,
                    fontSize: 22,
                    fontFamily: AppFont.gilroyMedium,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    Icon(
                      item.isCompleted
                          ? Icons.check_circle
                          : Icons.timelapse,
                      size: 20,
                      color: item.isCompleted
                          ? Colors.green
                          : Colors.orange,
                    ),

                    const SizedBox(width: 4),

                    Text(
                      item.isCompleted
                          ? context.l10n.completed
                          : context.l10n.inProgress,
                      style: TextStyle(
                        fontSize: 18,
                        color: item.isCompleted
                            ? Colors.black
                            : Colors.orange,
                        fontFamily: AppFont.gilroyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _dateChip(String date) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppColor.newsecondaruyyy,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/new_design/icon/uiw_date.png",
            width: 18,
            height: 18,
            color: AppColor.fullBlack,
          ),
          const SizedBox(width: 4),
          Text(
            date,
            style: TextStyle(
              color: AppColor.fullBlack,
              fontFamily: AppFont.gilroySemiBold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }

  // onTap: () => _generatePdf(context, state.sessions, state.totalCount),
  Widget _shareButton(BuildContext context, JaapHistoryState state) {
    return GestureDetector(
      onTap: () => generatePdf(context, state.sessions, state.totalCount),

      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        height: 34,
        width: 102,
        decoration: BoxDecoration(
          color: AppColor.newsecondaruy,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.share, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                context.l10n.share,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickStartDate(
      BuildContext context,
      JaapHistoryState state,
      ) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: state.startDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final bloc = context.read<JaapHistoryBloc>();

      bloc.add(ChangeStartDate(picked));
      bloc.add(const ApplyFilter());
    }
  }

  Future<void> _pickEndDate(
      BuildContext context,
      JaapHistoryState state,
      ) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: state.endDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final bloc = context.read<JaapHistoryBloc>();

      bloc.add(ChangeEndDate(picked));
      bloc.add(const ApplyFilter());
    }
  }

  Future<void> generatePdf(BuildContext context, List<JaapSession> sessions, int totalCount) async {
    final pdf = pw.Document();
    final completedSessions = sessions.where((e) => e.isCompleted).toList();
    final bool isHindi = Localizations.localeOf(context).languageCode == 'hi';

    /// 🔹 Load fonts based on language
    pw.Font ttfRegular;
    pw.Font ttfMedium;

    try {
      if (isHindi) {
        ttfRegular = await PdfGoogleFonts.notoSansDevanagariRegular();
        ttfMedium = await PdfGoogleFonts.notoSansDevanagariBold();
      } else {
        final regularFont = await rootBundle.load("assets/fonts/Gilroy-Regular.ttf");
        final mediumFont = await rootBundle.load("assets/fonts/Gilroy-Medium.ttf");
        ttfRegular = pw.Font.ttf(regularFont);
        ttfMedium = pw.Font.ttf(mediumFont);
      }
    } catch (e) {
      final regularFont = await rootBundle.load("assets/fonts/Gilroy-Regular.ttf");
      final mediumFont = await rootBundle.load("assets/fonts/Gilroy-Medium.ttf");
      ttfRegular = pw.Font.ttf(regularFont);
      ttfMedium = pw.Font.ttf(mediumFont);
    }

    pdf.addPage(
      pw.MultiPage(
        margin: const pw.EdgeInsets.all(16),
        build: (pdfContext) => [
          /// 🔹 Header
          pw.Text(
            context.l10n.jaapMalaHistory,
            style: pw.TextStyle(font: ttfMedium, fontSize: 20),
          ),
          pw.SizedBox(height: 6),
          pw.Text(
            "${context.l10n.totalCount} $totalCount",
            style: pw.TextStyle(font: ttfRegular, fontSize: 14),
          ),
          pw.SizedBox(height: 14),

          /// 🔹 Cards
          ...completedSessions.map(
            (item) {
              return pw.Container(
                margin: const pw.EdgeInsets.only(bottom: 10),
                padding: const pw.EdgeInsets.all(8),
                decoration: pw.BoxDecoration(
                  color: PdfColors.white,
                  borderRadius: pw.BorderRadius.circular(6),
                  border: pw.Border.all(color: PdfColors.grey300),
                ),
                child: pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    /// LEFT SIDE
                    pw.Expanded(
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          /// Date chip
                          pw.Container(
                            padding: const pw.EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromHex("#FFE0C2"),
                              borderRadius: pw.BorderRadius.circular(20),
                            ),
                            child: pw.Text(
                              item.dateLabel,
                              style: pw.TextStyle(font: ttfMedium, fontSize: 10),
                            ),
                          ),
                          pw.SizedBox(height: 6),
                          pw.Text(
                            item.timeRange,
                            style: pw.TextStyle(font: ttfRegular, fontSize: 11),
                          ),
                          pw.SizedBox(height: 2),
                          pw.Text(
                            item.durationText,
                            style: pw.TextStyle(font: ttfMedium, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    /// RIGHT SIDE
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Text(
                          item.getMantraName(context),
                          style: pw.TextStyle(font: ttfMedium, fontSize: 12),
                        ),
                        pw.SizedBox(height: 4),
                        pw.Text(
                          "${item.currentCount}/${item.targetCount}",
                          style: pw.TextStyle(
                            font: ttfMedium,
                            fontSize: 14,
                            color: PdfColor.fromHex("#8B4A00"),
                          ),
                        ),
                        pw.SizedBox(height: 3),
                        pw.Text(
                          item.isCompleted ? context.l10n.completed : context.l10n.inProgress,
                          style: pw.TextStyle(
                            font: ttfRegular,
                            fontSize: 11,
                            color: item.isCompleted
                                ? PdfColors.green
                                : PdfColors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );

    await Printing.sharePdf(
      bytes: await pdf.save(),
      filename: "jaap_history.pdf",
    );
  }
}
