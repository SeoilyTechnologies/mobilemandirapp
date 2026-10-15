import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/entity/chadava_detail_model.dart';
import '../../data/entity/chadava_offering_model.dart';
import 'chadava_detail_event.dart';
import 'chadava_detail_state.dart';

class ChadavaDetailBloc extends Bloc<ChadavaDetailEvent, ChadavaDetailState> {
  ChadavaDetailBloc() : super(ChadavaDetailState.initial()) {
    on<LoadChadavaDetail>(_onLoadDetail);
    on<SelectChadavaOffering>(_onSelectOffering);
  }

  void _onLoadDetail(LoadChadavaDetail event, Emitter<ChadavaDetailState> emit) {
    emit(state.copyWith(isLoading: true));

    final String rawTitle = event.itemTitle ?? 'Shani Dev Chadava';
    final String displayTitle =
        rawTitle.endsWith('Chadava') ? rawTitle : '$rawTitle Chadava';
    final String mainName = rawTitle.replaceAll(' Chadava', '').trim();
    
    final String image = _getDeityBigImage(mainName, event.itemImage);

    final offerings = const [
      ChadavaOfferingModel(
        id: '1',
        title: 'Sarson ka tel',
        subtitle: 'Sarson ka tel',
        price: 101,
        iconAsset: 'assets/new_design/chadhawa_image/sarsotel.png',
        isSelected: true,
      ),
      ChadavaOfferingModel(
        id: '2',
        title: 'Kale til + tel',
        subtitle: 'Sampoorna vidhi ke sath',
        price: 251,
        iconAsset: 'assets/new_design/chadhawa_image/kalatel.png',
        isSelected: false,
      ),
      ChadavaOfferingModel(
        id: '3',
        title: 'Kambal daan',
        subtitle: 'Zarurat mand ko daan',
        price: 501,
        iconAsset: 'assets/new_design/chadhawa_image/kambal.png',
        isSelected: false,
      ),
      ChadavaOfferingModel(
        id: '4',
        title: 'Urad dal daan',
        subtitle: 'Mandir ke annadaan mein',
        price: 151,
        iconAsset: 'assets/new_design/chadhawa_image/anar.png',
        isSelected: false,
      ),
      ChadavaOfferingModel(
        id: '5',
        title: 'Loha ya nariyal',
        subtitle: 'Shani mandir mein arpan',
        price: 101,
        iconAsset: 'assets/new_design/chadhawa_image/nariyal.png',
        isSelected: false,
      ),
    ];

    final detailModel = ChadavaDetailModel(
      itemId: event.itemId,
      itemTitle: displayTitle,
      kyunKareinTitle: 'Kyun Karein',
      kyunKareinDescription:
          '$mainName nyay aur karm-fal ke devta hain. Shanivaar ko unhe tel chadhane se sade-sati aur dhaiya ka bojh halka hota hai.',
      imageAsset: image,
      offerings: offerings,
    );

    emit(state.copyWith(
      isLoading: false,
      detailModel: detailModel,
      selectedOffering: offerings.first,
    ));
  }

  String _getDeityBigImage(String deityName, String? passedImage) {
    final lower = deityName.toLowerCase();
    if (lower.contains('shani')) {
      return 'assets/new_design/chadhawa_image/shanidevbigimage.png';
    } else if (lower.contains('shiv')) {
      return 'assets/new_design/chadhawa_image/shivji.png';
    } else if (lower.contains('peepal') || lower.contains('pipal')) {
      return 'assets/new_design/chadhawa_image/pipal.png';
    } else if (passedImage != null &&
        passedImage.isNotEmpty &&
        passedImage.contains('chadhawa_image')) {
      return passedImage;
    }
    return 'assets/new_design/chadhawa_image/shanidevbigimage.png';
  }

  void _onSelectOffering(SelectChadavaOffering event, Emitter<ChadavaDetailState> emit) {
    if (state.detailModel == null) return;

    final updatedOfferings = state.detailModel!.offerings.map((offering) {
      return offering.copyWith(isSelected: offering.id == event.offeringId);
    }).toList();

    final selected = updatedOfferings.firstWhere(
      (o) => o.id == event.offeringId,
      orElse: () => updatedOfferings.first,
    );

    final updatedModel = ChadavaDetailModel(
      itemId: state.detailModel!.itemId,
      itemTitle: state.detailModel!.itemTitle,
      kyunKareinTitle: state.detailModel!.kyunKareinTitle,
      kyunKareinDescription: state.detailModel!.kyunKareinDescription,
      imageAsset: state.detailModel!.imageAsset,
      offerings: updatedOfferings,
    );

    emit(state.copyWith(
      detailModel: updatedModel,
      selectedOffering: selected,
    ));
  }
}
