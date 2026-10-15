import 'package:bloc/bloc.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../data/entity/categories_list_response.dart';
import '../../domain/usecase/categoreis_usecase.dart';
import 'select_category_event.dart';
import 'select_category_state.dart';

class SelectCategoryBloc
    extends Bloc<SelectCategoryEvent, SelectCategoryState> {
  final CategoreisUsecase _categoreisUsecase = getIt<CategoreisUsecase>();

  SelectCategoryBloc() : super(SelectCategoryState.initial()) {
    on<CategorySelected>(_onCategorySelected);
    on<Proceed>(_onProceed);
    on<GetCategoriesList>(getCategroiesList);
  }



  /// get categories list using fake json
  Future<void> getCategroiesList(
      GetCategoriesList event,
      Emitter<SelectCategoryState> emit,
      ) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final fakeJson = {
      "success": true,
      "message": "Categories fetched successfully",
      "data": [
        {
          "_id": "69dddf6716f181a51e3e9e6e",
          "name": "Gaushala",
          "subtitle": "Cow Protection",
          "backgroundColor": "#FBF4ED",
          "slug": "gaushala",
          "icon": "dashboardtemplate/cat1.png",
          "isActive": true,
          "order": 1,
          "createdAt": "2026-04-14T06:32:07.238Z",
          "updatedAt": "2026-04-14T06:32:07.238Z",
          "__v": 0
        },
        {
          "_id": "69df1670bd0b80dbc2195db4",
          "name": "Sant / Pandit",
          "subtitle": "Puja, Path, Katha",
          "backgroundColor": "#EDE4E4",
          "slug": "sant-pandit",
          "icon": "dashboardtemplate/cat2.png",
          "isActive": true,
          "order": 2
        },
        {
          "_id": "69df1670bd0b80dbc2195db5",
          "name": "Astrologer",
          "subtitle": "Kundli vastu, Prashna",
          "backgroundColor": "#EDE4E4",
          "slug": "astrologer",
          "icon": "dashboardtemplate/cat3.png",
          "isActive": true,
          "order": 3
        },
        {
          "_id": "69df1670bd0b80dbc2195db6",
          "name": "Temple",
          "subtitle": "Prasad, Annadaan",
          "backgroundColor": "#E6F0E6",
          "slug": "temple",
          "icon": "dashboardtemplate/cat4.png",
          "isActive": true,
          "order": 4
        },
        {
          "_id": "69df1670bd0b80dbc2195db7",
          "name": "Prasad Delivery",
          "subtitle": "1-3 Days",
          "backgroundColor": "#EDE4F0",
          "slug": "prasad-delivery",
          "icon": "dashboardtemplate/cat5.png",
          "isActive": true,
          "order": 5
        },
        {
          "_id": "69df1670bd0b80dbc2195db8",
          "name": "Communities Groups",
          "subtitle": "Kirtan, Jagran",
          "backgroundColor": "#E6E6E6",
          "slug": "communities",
          "icon": "dashboardtemplate/cat6.png",
          "isActive": true,
          "order": 6
        },
        {
          "_id": "69df1670bd0b80dbc2195db9",
          "name": "Live Darshan",
          "subtitle": "Scheduled",
          "backgroundColor": "#EDE4E4",
          "slug": "live-darshan",
          "icon": "dashboardtemplate/cat7.png",
          "isActive": true,
          "order": 7
        },
        {
          "_id": "69df1670bd0b80dbc2195dba",
          "name": "Diya Donation",
          "subtitle": "Daily",
          "backgroundColor": "#F5EBD9",
          "slug": "diya-donation",
          "icon": "dashboardtemplate/cat8.png",
          "isActive": true,
          "order": 8
        },
        {
          "_id": "6a02fb6ebf6bae45d3b1e729",
          "name": "Mini Seva",
          "subtitle": "Dog Roti, Ant Aatta, Fish Dana, Bird Feed etc.",
          "backgroundColor": "#F9DBFF",
          "slug": "mini-seva",
          "icon": "dashboardtemplate/cat5.png",
          "isActive": true,
          "order": 9
        }
      ],
      "errors": null
    };

    final mockResponse = CategoriesListResponse.fromJson(fakeJson);

    emit(
      state.copyWith(
        errorMessage: '',
        isProceedSuccess: false,
        categoriesListApiResponse: mockResponse,
      ),
    );
  }

  /// 🔹 Category Select
  void _onCategorySelected(
    CategorySelected event,
    Emitter<SelectCategoryState> emit,
  )
  {
    if (!event.category.isActive) return;

    /// ✅ Toggle logic
    if (state.selectedCategory?.id == event.category.id) {
      /// same item tap → unselect
      emit(
        state.copyWith(
          selectedCategory: null,
          errorMessage: '',
          isProceedSuccess: false,
        ),
      );
    } else {
      /// new selection
      emit(
        state.copyWith(
          selectedCategory: event.category,
          errorMessage: '',
          isProceedSuccess: false,
        ),
      );
    }
  }

  ///  Continue Button Click
  void _onProceed(Proceed event, Emitter<SelectCategoryState> emit) {
    if (state.selectedCategory == null) {
      emit(
        state.copyWith(
          errorMessage: 'Please select a seva category',
          isProceedSuccess: false, //  ensure false
        ),
      );
    } else {
      emit(state.copyWith(errorMessage: '', isProceedSuccess: true));
    }
  }

  ///  get servies breed and cow type data
  Future<void> getCategroiesListf(
    GetCategoriesList event,
    Emitter<SelectCategoryState> emit,
  ) async
  {

    final categoriesListApiResponse = await _categoreisUsecase
        .callGetCategriesApi({});
    categoriesListApiResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: failure.message,
            isProceedSuccess: false,
            categoriesListApiResponse: CategoriesListResponse(),
          ),
        );
      },
      (success) {
        emit(
          state.copyWith(
            errorMessage: "",
            isProceedSuccess: false,
            categoriesListApiResponse: success,
          ),
        );
      },
    );

  }
}
