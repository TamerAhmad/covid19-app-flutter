import 'package:covid19flutter/services/networking.dart';

const apiKey = '9fee8d150097cc29f3f225cc756a3aa3';
const url = 'https://covid19-server.chrismichael.now.sh/api/v1/AllReports';

class CoronaModel {

  Future<dynamic> getAPIData() async{
    NetworkHelper network = NetworkHelper(url);
    var corona = await network.getData();

    return corona;
  }

}
