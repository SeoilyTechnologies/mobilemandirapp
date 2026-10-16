import 'package:either_dart/either.dart';

import '../../../../common/network/failure.dart';
import '../../data/entity/dynamic_tab_models.dart';

abstract class DynamicTabRepo {
  Future<Either<Failure, HomeTabListResponse>> getHomeTabs();

  Future<Either<Failure, DynamicPageModel>> getPage(String slug);

  Future<Either<Failure, List<PageTagModel>>> getPageTags();

  /// Tagged pages; `tag` empty = all tags. `year`/`month` 0 = upcoming, else
  /// festival dates in that month (past months too).
  Future<Either<Failure, PageListResponse>> getPages({String tag = '', int year = 0, int month = 0});
}
