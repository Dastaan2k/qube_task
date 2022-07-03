class APIResponse<T> {

  T? data;
  bool error;
  int statusCode;
  String? reasonPhrase;

  APIResponse({this.data, this.error=false, this.statusCode=200, this.reasonPhrase});    /// Default values set for a successful request

}