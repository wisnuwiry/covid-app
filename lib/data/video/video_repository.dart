import '../../models/models.dart';
import 'video_api_provider.dart';

class VideoRepository {
  final contanctApiProvider = VideoApiProvider();

  /// parameter [page] is page paginate request & [lenght] is lenght content tiap request
  Future<ListVideoModel> getVideoPaginate(int page, int length) =>
      contanctApiProvider.getAllVideoPaginate(page, length);
}
