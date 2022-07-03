import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

HttpClientAdapter getDioHttpAdapter() => DefaultHttpClientAdapter()
  ..onHttpClientCreate = (client) {
    return client..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  };
