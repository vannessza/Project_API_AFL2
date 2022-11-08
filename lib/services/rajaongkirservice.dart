part of 'services.dart';

class RajaOngkirService {
  static Future<http.Response> sendEmail(String mail) {
    return http.post(
        Uri.https(Const.baseUrl, "/cirestapi/api/mahasiswa/sendmail"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'AFL-API-KEY': 'AFL-CloudComp-02-11-22',
        },
        body: jsonEncode(<String, dynamic>{
          'email': mail,
        }));
  }
}
