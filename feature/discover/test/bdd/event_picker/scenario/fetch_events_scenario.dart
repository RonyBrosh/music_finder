import 'package:bdd/bdd.dart';

const _fetchEventsEndpoint =
    '/discovery/v2/events?apikey=XHbCIy9TEnel0iAvBEC0CLLxZG96YxJB&genreId=KnvZfZ7vAvd&includeTBA=no&includeTBD=no&sort=date,asc&size=100&dmaId=602';

final fetchEventsFailsScenario = Scenario(
  handlers: [
    MockedRequestHandler(
      path: _fetchEventsEndpoint,
      result: MockedRequestHandler.returnError(errorCode: 404),
    ),
  ],
);
