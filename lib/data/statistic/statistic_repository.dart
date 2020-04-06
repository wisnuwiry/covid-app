import '../../models/models.dart';
import 'statistic_api_provider.dart';

class StatisticRepository {
  final StatisticApiProvider statisticApiProvider = StatisticApiProvider();

  Future<List<CaseCountry>> getCaseWorld() =>
      statisticApiProvider.getCaseWorld();

  Future<CaseCountry> getCaseCountry(String country) =>
      statisticApiProvider.getCaseCountry(country);
}
