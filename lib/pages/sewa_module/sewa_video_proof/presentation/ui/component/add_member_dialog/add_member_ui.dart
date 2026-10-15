import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/values/fonts.dart';

import '../../../../../../../common/component/sewa_text_field.dart';
import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../../../bloc/video_proof_bloc.dart';
import '../../../bloc/video_proof_event.dart';

class AddMemberUI extends StatelessWidget {
  const AddMemberUI({
    super.key,
    required this.fontFactor,
    required this.padding,
    required this.buttonHeight,
  });

  final double fontFactor;
  final double padding;
  final double buttonHeight;

  @override
  Widget build(BuildContext context) {
    final nameCtrl = TextEditingController();

    return SingleChildScrollView(
      child: Center(
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: context.screenWidth * 0.9,
            constraints: const BoxConstraints(maxWidth: 420),
            decoration: BoxDecoration(
              color: const Color(0xFFF3E7D9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// 🔥 HEADER (BROWN BAR)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xFF8B4A00),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Raise Concern",
                        style: TextStyle(
                          fontFamily: AppFont.gilroyBold,
                          color: Colors.white,
                          fontSize: (context.screenWidth * fontFactor).clamp(
                            16,
                            20,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                /// 🔥 BODY
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SevaTextField(
                        label: 'Message For Vendor',
                        hint: 'Enter message...',
                        controller: nameCtrl,
                        maxLines: 3,
                        onChanged: (v) {
                          // context.read<SetupProfileBloc>().add(
                          //   SetupProfileEvent.bioChanged(v),
                          // );
                        },
                      ),
                      const SizedBox(height: 20),

                      /// CREATE BUTTON
                      GestureDetector(
                        onTap: () {
                          if (nameCtrl.text.trim().isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(context.l10n.pleaseEnterMessageForVendor),
                              ),
                            );
                            return;
                          }

                          BlocProvider.of<VideoProofBloc>(context).add(
                            VideoProofEvent.raiseConcernVideoProof(
                              "",
                              nameCtrl.text.trim(),
                            ),
                          );
                        },

                        child: Center(
                          child: Container(
                            width: 144,
                            height: 34,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9A520),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                context.l10n.submit,
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 🔥 INPUT FIELD (MATCH DESIGN)
  Widget _field({
    required BuildContext context,
    required String hint,
    required TextEditingController ctrl,
    required Function(String) onChanged,
    TextInputType? keyboardType,
  }) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFEAEAEA),
        borderRadius: BorderRadius.circular(10),

        /// 🔥 SHADOW
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
      child: TextField(
        controller: ctrl,
        keyboardType: keyboardType,
        // 🔥 dynamic keyboard
        onChanged: onChanged,
        // 🔥 bloc connect
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          border: InputBorder.none,
        ),
      ),
    );
  }

  /// 🔥 TOGGLE BUTTON (MATCH DESIGN)
  Widget _toggleBtn(
    BuildContext context, {
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : const Color(0xFFEAEAEA),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? const Color(0xFF8B4A00) : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(width: 6),
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
                color: isSelected
                    ? const Color(0xFF8B4A00)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
