import 'package:covid19/data/faq/faq_api_provider.dart';
import 'package:covid19/models/models.dart';

class FaqRespository {
  final faqApiProvider = FaqApiProvider();

  Future<List<FaqModel>> getAllFaq() => faqApiProvider.getAllFaq();

  /// parameter [page] is page paginate request & [lenght] is lenght content tiap request
  Future<ListFaqModel> getFaqPaginate(int page, int length) =>
      faqApiProvider.getAllFaqPaginate(page, length);
}
