import 'package:covid19/models/models.dart';

import 'contact_api_provider.dart';

class ContactRepository {
  final contanctApiProvider = ContactApiProvider();

  Future<ListContactModel> getContactPaginate(int page, int length) =>
      contanctApiProvider.getAllContactPaginate(page, length);
}
