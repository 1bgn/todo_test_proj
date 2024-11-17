mixin UriMixin {
  Uri getUri(String path,
  {String? query, Map<String, dynamic>? queryParameters}) {
    return Uri(
        scheme: "https",
        host: '0366de9d-512c-488e-a5ac-030ec909f42e.mock.pstmn.io/',
        path: path,
        query: query,
        queryParameters: queryParameters);
  }
}
