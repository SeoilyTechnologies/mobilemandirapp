import '../../../../common/routes/exports.dart';
import '../../../../common/values/screenUtils.dart';
import '../bloc/god_details_bloc.dart';
import '../bloc/god_details_event.dart';
import 'god_detail_screen.dart';
import 'god_detail_screen_medium.dart';

class GodDetailWrapper extends StatefulWidget {
  GodDetailWrapper({super.key});

  @override
  State<GodDetailWrapper> createState() => _GodDetailWrapperState();
}

class _GodDetailWrapperState extends State<GodDetailWrapper> {
  @override
  void initState() {
    super.initState();
    // Deep-link se navigate hone pe arguments mein godId milta hai.
    // Normal navigation (god list/home) event pehle fire karta hai
    // aur godId argument nahi pass karta — isliye yahan kuch nahi hota.
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadFromDeepLinkArgs());
  }

  void _loadFromDeepLinkArgs() {
    if (!mounted) return;
    final args = ModalRoute.of(context)?.settings.arguments;
    final godId = args is Map ? args['godId']?.toString() : null;
    if (godId == null || godId.isEmpty) return;
    context.read<GodDetailsBloc>().add(GodDetailsEvent.getGodDetailById(id: godId));
  }

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return GodDetailScreen();
    } else if (context.isMediumScreen) {
      return GodDetailScreenMedium();
    } else {
      return GodDetailScreenMedium();
    }
  }
}
