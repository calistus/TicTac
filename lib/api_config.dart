

const baseURL = "";

class APIConfig{

  apiHeader(String accessToken){
    return{'Authorization':'Bearer $accessToken'};
  }

  static getPlatformExceptionErrorResult(e) {
    if (e.response != null) {
      if (e.response!.data['detail'] != null) {
        print(e.requestOptions.data);
        throw Exception(e.response!.data['detail']);
      } else {
        throw Exception();
      }
    } else {
      print(e.toString());
    }
  }
}
