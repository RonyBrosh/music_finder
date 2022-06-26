import 'package:bdd/bdd.dart';

final fetchGenresFailsScenario = Scenario(
  handlers: [
    MockedRequestHandler(
      path: '/genre',
      result: MockedRequestHandler.returnError(errorCode: 404),
    ),
  ],
);
