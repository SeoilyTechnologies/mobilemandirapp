import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/entity/chadava_item_model.dart';
import 'chadava_event.dart';
import 'chadava_state.dart';

class ChadavaBloc extends Bloc<ChadavaEvent, ChadavaState> {
  ChadavaBloc() : super(ChadavaState.initial()) {
    on<LoadChadavaData>(_onLoadData);
    on<SelectChadavaTab>(_onSelectTab);
    on<SelectChadavaItem>(_onSelectItem);
  }

  void _onLoadData(LoadChadavaData event, Emitter<ChadavaState> emit) {
    final godItems = const [
      ChadavaItemModel(id: '1', title: 'Shani Dev', imageAsset: 'assets/new_design/icon/god_one.png', category: 'god_seva', isSelected: true),
      ChadavaItemModel(id: '2', title: 'Hanuman Ji', imageAsset: 'assets/new_design/icon/god_two.png', category: 'god_seva'),
      ChadavaItemModel(id: '3', title: 'Shiv Ji', imageAsset: 'assets/new_design/chadhawa_image/shivji.png', category: 'god_seva'),
      ChadavaItemModel(id: '4', title: 'Durga Mata', imageAsset: 'assets/new_design/icon/god_three.png', category: 'god_seva'),
      ChadavaItemModel(id: '5', title: 'Ganesh Ji', imageAsset: 'assets/new_design/background/ganeshg_background.png', category: 'god_seva'),
      ChadavaItemModel(id: '6', title: 'Sai Baba', imageAsset: 'assets/new_design/icon/god_four.png', category: 'god_seva'),
      ChadavaItemModel(id: '7', title: 'Vishnu Ji', imageAsset: 'assets/new_design/background/ptradev_aarti_img.png', category: 'god_seva'),
      ChadavaItemModel(id: '8', title: 'Lakshmi Mata', imageAsset: 'assets/new_design/icon/god_top.png', category: 'god_seva'),
      ChadavaItemModel(id: '9', title: 'Surya Dev', imageAsset: 'assets/new_design/icon/banner_item_image.png', category: 'god_seva'),
    ];

    final vanspatiItems = const [
      ChadavaItemModel(id: '1', title: 'Banyan', imageAsset: 'assets/new_design/icon/sewa_one.png', category: 'vanspati_seva', isSelected: true),
      ChadavaItemModel(id: '2', title: 'Neem', imageAsset: 'assets/new_design/icon/sewa_two.png', category: 'vanspati_seva'),
      ChadavaItemModel(id: '3', title: 'Peepal', imageAsset: 'assets/new_design/chadhawa_image/pipal.png', category: 'vanspati_seva'),
      ChadavaItemModel(id: '4', title: 'Tulsi', imageAsset: 'assets/new_design/icon/sewa_three.png', category: 'vanspati_seva'),
      ChadavaItemModel(id: '5', title: 'Bel Patr', imageAsset: 'assets/new_design/icon/sewa_four.png', category: 'vanspati_seva'),
      ChadavaItemModel(id: '6', title: 'Ashoka', imageAsset: 'assets/categories_images/cat_6_aa_2.png', category: 'vanspati_seva'),
      ChadavaItemModel(id: '7', title: 'Kadamba', imageAsset: 'assets/categories_images/cat_7_aa_2.png', category: 'vanspati_seva'),
      ChadavaItemModel(id: '8', title: 'Anar', imageAsset: 'assets/new_design/chadhawa_image/anar.png', category: 'vanspati_seva'),
      ChadavaItemModel(id: '9', title: 'Bargad', imageAsset: 'assets/new_design/icon/sewa_top.png', category: 'vanspati_seva'),
    ];

    emit(state.copyWith(
      godItems: godItems,
      vanspatiItems: vanspatiItems,
    ));
  }

  void _onSelectTab(SelectChadavaTab event, Emitter<ChadavaState> emit) {
    emit(state.copyWith(selectedTabIndex: event.tabIndex));
  }

  void _onSelectItem(SelectChadavaItem event, Emitter<ChadavaState> emit) {
    if (state.selectedTabIndex == 0) {
      final updated = state.godItems.map((item) {
        return item.copyWith(isSelected: item.id == event.itemId);
      }).toList();
      emit(state.copyWith(godItems: updated));
    } else {
      final updated = state.vanspatiItems.map((item) {
        return item.copyWith(isSelected: item.id == event.itemId);
      }).toList();
      emit(state.copyWith(vanspatiItems: updated));
    }
  }
}
