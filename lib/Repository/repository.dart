
import 'package:http/http.dart' as http;

class Repository {
  String _baseUrl =
      'https://newhmanagement.000webhostapp.com/image_show_all.php';

  httpGet(String api) async {
    return await http.get(_baseUrl + "/" + api);
  }
}
