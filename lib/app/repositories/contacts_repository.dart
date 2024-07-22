import 'package:crud_contacts/app/models/contact_model.dart';
import 'package:dio/dio.dart';

class ContactsRepository {
  Future<ContactModel> findAll() async {
    final response = await Dio().get('http://10.0.2.2:3031/contacts');

    final contacts = ContactModel.fromJson(response.data);

    return contacts;
  }
}
