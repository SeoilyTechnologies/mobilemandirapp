import 'package:either_dart/either.dart';

import '../../../../common/network/failure.dart';
import '../../data/entity/dynamic_tab_models.dart';
import '../repo/dynamic_tab_repo.dart';

class DynamicTabUsecase {
  final DynamicTabRepo _repo;

  DynamicTabUsecase(this._repo);

  Future<Either<Failure, HomeTabListResponse>> callGetHomeTabs() =>
      _repo.getHomeTabs();

  Future<Either<Failure, DynamicPageModel>> callGetPage(String slug) =>
      _repo.getPage(slug);

  Future<Either<Failure, List<PageTagModel>>> callGetPageTags() =>
      _repo.getPageTags();

  Future<Either<Failure, PageListResponse>> callGetPages({String tag = '', int year = 0, int month = 0}) =>
      _repo.getPages(tag: tag, year: year, month: month);
}
