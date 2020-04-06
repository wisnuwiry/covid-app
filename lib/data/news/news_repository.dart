import '../../models/models.dart';
import 'news_api_provider.dart';

class NewsRepository {
  final contanctApiProvider = NewsApiProvider();

  /// parameter [page] is page paginate request & [lenght] is lenght content tiap request
  Future<ListNewsModel> getNewsPaginate(int page, int length) =>
      contanctApiProvider.getAllNewsPaginate(page, length);
}
