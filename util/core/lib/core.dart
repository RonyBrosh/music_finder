export 'package:core/src/di/di_container.dart';
export 'package:core/src/di/di_initializer.dart';
export 'package:core/src/localisation/build_context_extension.dart';
export 'package:core/src/util/link_manager.dart';

export 'package:core/src/model/result_state.dart';

export 'package:core/src/network/http_adapter/dio_http_adapter_stub.dart'
    if (dart.library.html) 'package:core/src/network/http_adapter/dio_http_adapter_web.dart'
    if (dart.library.io) 'package:core/src/network/http_adapter/dio_http_adapter_mobile.dart';
