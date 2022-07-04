import 'package:bdd/bdd.dart';

const _fetchEventsEndpoint =
    '/discovery/v2/events?includeTBA=no&includeTBD=no&sort=date,asc&size=100&dmaId=602&genreId=KnvZfZ7vAvv&apikey=XHbCIy9TEnel0iAvBEC0CLLxZG96YxJB';

final fetchEventsFailsScenario = Scenario(
  handlers: [
    MockedRequestHandler(
      path: _fetchEventsEndpoint,
      result: MockedRequestHandler.returnError(errorCode: 404),
    ),
  ],
);

final fetchEventsSucceedsScenario = Scenario(
  handlers: [
    MockedRequestHandler(
      path: _fetchEventsEndpoint,
      result: MockedRequestHandler.returnSuccess(
        data: '''
        {
	"_embedded": {
		"events": [
			{
				"name": "Big Mama's Door",
				"type": "event",
				"id": "G5dFZ95lXRVNe",
				"test": false,
				"url": "https://www.ticketweb.uk/event/big-mamas-door-green-note-tickets/12153145?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-05-26T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-08T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-08",
						"localTime": "20:00:00",
						"dateTime": "2022-07-08T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6ZGVL",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ95lXRVNe?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Connor Selby Band",
				"type": "event",
				"id": "G5dFZ9GH0OVud",
				"test": false,
				"url": "https://www.ticketweb.uk/event/connor-selby-band-the-sound-lounge-sutton-tickets/12226825?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-15T19:40:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-08T19:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-08",
						"localTime": "20:00:00",
						"dateTime": "2022-07-08T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW70PQ1",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9GH0OVud?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177b30?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Sound Lounge (Sutton)",
							"type": "venue",
							"id": "KovZ9177b30",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-sound-lounge-sutton-tickets-sutton/venue/414155",
							"locale": "en-de",
							"postalCode": "SM1 1NU ",
							"timezone": "Europe/London",
							"city": {
								"name": "Sutton"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "216-220 High Street"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 28,
								"ticketmaster": 28,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177b30?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Dom Pipkin",
				"type": "event",
				"id": "G5dFZ9Gw1c46H",
				"test": false,
				"url": "https://www.ticketweb.uk/event/dom-pipkin-green-note-tickets/12215245?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-12T07:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-13T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-13",
						"localTime": "20:00:00",
						"dateTime": "2022-07-13T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW70HTB",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9Gw1c46H?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Jo Carley and the Old Dry Skulls",
				"type": "event",
				"id": "G5dFZ97LPPfa2",
				"test": false,
				"url": "https://www.ticketweb.uk/event/jo-carley-and-the-old-green-note-tickets/11788645?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-02-07T10:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-16T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-16",
						"localTime": "20:30:00",
						"dateTime": "2022-07-16T19:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6T47X",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ97LPPfa2?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Serious Sam Barrett",
				"type": "event",
				"id": "G5dFZ9FStr0a4",
				"test": false,
				"url": "https://www.ticketweb.uk/event/serious-sam-barrett-green-note-tickets/12013605?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-12T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-18T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-18",
						"localTime": "20:00:00",
						"dateTime": "2022-07-18T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6WZ8X",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9FStr0a4?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "The Troubadour Presents Wolfie's Rockin' the Blues",
				"type": "event",
				"id": "G5dFZ95Et-xJR",
				"test": false,
				"url": "https://www.ticketweb.uk/event/the-troubadour-presents-wolfies-rockin-troubadour-tickets/12148915?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-05-25T15:25:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-22T19:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-22",
						"localTime": "20:00:00",
						"dateTime": "2022-07-22T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6ZE5T",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ95Et-xJR?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177XdV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Troubadour",
							"type": "venue",
							"id": "KovZ9177XdV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-troubadour-tickets-london/venue/452858",
							"locale": "en-de",
							"postalCode": "SW5 9JA",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "265 Old Brompton Road",
								"line2": "Earls Court"
							},
							"location": {
								"longitude": "-0.19197",
								"latitude": "51.488695"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 21,
								"ticketmaster": 21,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177XdV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Davina & the Vagabonds",
				"type": "event",
				"id": "G5dFZpUwle9G4",
				"test": false,
				"url": "https://www.ticketweb.uk/event/davina-the-vagabonds-jazz-cafe-tickets/10403445?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2020-02-04T12:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-25T19:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-25",
						"localTime": "19:00:00",
						"dateTime": "2022-07-25T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW66WPF",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZpUwle9G4?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917Cjvf?locale=en-us"
						},
						{
							"href": "/discovery/v2/attractions/K8vZ917_0K0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Davina and the Vagabonds",
							"type": "attraction",
							"id": "K8vZ917Cjvf",
							"test": false,
							"url": "https://www.ticketmaster.com/davina-and-the-vagabonds-tickets/artist/1592263",
							"locale": "en-us",
							"externalLinks": {
								"musicbrainz": [
									{
										"id": "267ed49c-5796-4af2-91b6-1f9760c0a3bd"
									}
								],
								"homepage": [
									{
										"url": "http://davinaandthevagabonds.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917Cjvf?locale=en-us"
								}
							}
						},
						{
							"name": "Acantha Lang",
							"type": "attraction",
							"id": "K8vZ917_0K0",
							"test": false,
							"url": "https://www.ticketmaster.com/acantha-lang-tickets/artist/2816852",
							"locale": "en-us",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAee",
										"name": "R&B"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vknE",
										"name": "Soul"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAel",
										"name": "Individual"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917_0K0?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Davina & the Vagabonds - Restaurant Tickets",
				"type": "event",
				"id": "G5dFZpUwleEG9",
				"test": false,
				"url": "https://www.ticketweb.uk/event/davina-the-vagabonds-jazz-cafe-tickets/10403465?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2020-02-04T12:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-25T19:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-25",
						"localTime": "19:00:00",
						"dateTime": "2022-07-25T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW66WPZ",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZpUwleEG9?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917Cjvf?locale=en-us"
						},
						{
							"href": "/discovery/v2/attractions/K8vZ917_0K0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Davina and the Vagabonds",
							"type": "attraction",
							"id": "K8vZ917Cjvf",
							"test": false,
							"url": "https://www.ticketmaster.com/davina-and-the-vagabonds-tickets/artist/1592263",
							"locale": "en-us",
							"externalLinks": {
								"musicbrainz": [
									{
										"id": "267ed49c-5796-4af2-91b6-1f9760c0a3bd"
									}
								],
								"homepage": [
									{
										"url": "http://davinaandthevagabonds.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/7af/cb3c12f0-5a88-49bc-ab45-85f303d967af_25991_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917Cjvf?locale=en-us"
								}
							}
						},
						{
							"name": "Acantha Lang",
							"type": "attraction",
							"id": "K8vZ917_0K0",
							"test": false,
							"url": "https://www.ticketmaster.com/acantha-lang-tickets/artist/2816852",
							"locale": "en-us",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/48b/2352e3b5-8496-496b-97a3-e605177e848b_105851_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAee",
										"name": "R&B"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vknE",
										"name": "Soul"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAel",
										"name": "Individual"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917_0K0?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Fantastic Negrito",
				"type": "event",
				"id": "1AdFZpdGkD89dVc",
				"test": false,
				"url": "https://www.ticketweb.uk/event/fantastic-negrito-jazz-cafe-tickets/10396505?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2020-02-04T10:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-02-28T11:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-26",
						"localTime": "19:00:00",
						"dateTime": "2022-07-26T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "offsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW66S63",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/1AdFZpdGkD89dVc?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Fantastic Negrito",
							"type": "attraction",
							"id": "K8vZ917Kpu7",
							"test": false,
							"url": "https://www.ticketmaster.com/fantastic-negrito-tickets/artist/2107646",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/user/fantasticnegrito"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/MusicNegrito"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/fantastic-negrito/720222195"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/fantasticnegrito"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/5QXLMdpKeByOo5ypH9gT13"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/fantasticnegrito"
									},
									{
										"url": "https://www.instagram.com/fantasticnegrito/"
									}
								],
								"musicbrainz": [
									{
										"id": "b7be8029-5ebe-4e4b-bc0c-a4d4756463c7"
									}
								],
								"homepage": [
									{
										"url": "http://www.fantasticnegrito.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 5,
								"ticketmaster": 5,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Fantastic Negrito - Restaurant Tickets",
				"type": "event",
				"id": "1AdFZpdGkD8pSVQ",
				"test": false,
				"url": "https://www.ticketweb.uk/event/fantastic-negrito-restaurant-jazz-cafe-tickets/10396535?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2020-02-04T10:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-02-28T11:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-26",
						"localTime": "19:00:00",
						"dateTime": "2022-07-26T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "offsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW66S6X",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/1AdFZpdGkD8pSVQ?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Fantastic Negrito",
							"type": "attraction",
							"id": "K8vZ917Kpu7",
							"test": false,
							"url": "https://www.ticketmaster.com/fantastic-negrito-tickets/artist/2107646",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/user/fantasticnegrito"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/MusicNegrito"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/fantastic-negrito/720222195"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/fantasticnegrito"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/5QXLMdpKeByOo5ypH9gT13"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/fantasticnegrito"
									},
									{
										"url": "https://www.instagram.com/fantasticnegrito/"
									}
								],
								"musicbrainz": [
									{
										"id": "b7be8029-5ebe-4e4b-bc0c-a4d4756463c7"
									}
								],
								"homepage": [
									{
										"url": "http://www.fantasticnegrito.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 5,
								"ticketmaster": 5,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Fantastic Negrito - Restaurant Tables",
				"type": "event",
				"id": "G5dFZpYCCNOcD",
				"test": false,
				"url": "https://www.ticketweb.uk/event/fantastic-negrito-restaurant-jazz-cafe-tickets/11260565?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2021-08-03T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-27T19:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-27",
						"localTime": "19:00:00",
						"dateTime": "2022-07-27T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6JUUT",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZpYCCNOcD?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Fantastic Negrito",
							"type": "attraction",
							"id": "K8vZ917Kpu7",
							"test": false,
							"url": "https://www.ticketmaster.com/fantastic-negrito-tickets/artist/2107646",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/user/fantasticnegrito"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/MusicNegrito"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/fantastic-negrito/720222195"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/fantasticnegrito"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/5QXLMdpKeByOo5ypH9gT13"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/fantasticnegrito"
									},
									{
										"url": "https://www.instagram.com/fantasticnegrito/"
									}
								],
								"musicbrainz": [
									{
										"id": "b7be8029-5ebe-4e4b-bc0c-a4d4756463c7"
									}
								],
								"homepage": [
									{
										"url": "http://www.fantasticnegrito.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 5,
								"ticketmaster": 5,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Fantastic Negrito",
				"type": "event",
				"id": "G5dFZpYCCNOm8",
				"test": false,
				"url": "https://www.ticketweb.uk/event/fantastic-negrito-jazz-cafe-tickets/11260555?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2021-08-03T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-27T19:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-27",
						"localTime": "19:00:00",
						"dateTime": "2022-07-27T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6JUV3",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZpYCCNOm8?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Fantastic Negrito",
							"type": "attraction",
							"id": "K8vZ917Kpu7",
							"test": false,
							"url": "https://www.ticketmaster.com/fantastic-negrito-tickets/artist/2107646",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/user/fantasticnegrito"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/MusicNegrito"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/fantastic-negrito/720222195"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/fantasticnegrito"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/5QXLMdpKeByOo5ypH9gT13"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/fantasticnegrito"
									},
									{
										"url": "https://www.instagram.com/fantasticnegrito/"
									}
								],
								"musicbrainz": [
									{
										"id": "b7be8029-5ebe-4e4b-bc0c-a4d4756463c7"
									}
								],
								"homepage": [
									{
										"url": "http://www.fantasticnegrito.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/uk/dbimages/60136a.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/uk/dbimages/60135a.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/290/b8c335f8-6936-4752-aa33-b45c37de3290_701961_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 5,
								"ticketmaster": 5,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917Kpu7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Bandini",
				"type": "event",
				"id": "G5dFZ9GOalxNs",
				"test": false,
				"url": "https://www.ticketweb.uk/event/bandini-green-note-tickets/12196415?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-08T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-07-30T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-07-30",
						"localTime": "20:00:00",
						"dateTime": "2022-07-30T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW70877",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9GOalxNs?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Errol Linton",
				"type": "event",
				"id": "G5dFZ9aRA6fmH",
				"test": false,
				"url": "https://www.ticketweb.uk/event/errol-linton-green-note-tickets/12071715?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-27T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-08-05T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-08-05",
						"localTime": "20:30:00",
						"dateTime": "2022-08-05T19:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6Y1TJ",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9aRA6fmH?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9179zqf?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Errol Linton",
							"type": "attraction",
							"id": "K8vZ9179zqf",
							"test": false,
							"url": "https://www.ticketmaster.com/errol-linton-tickets/artist/2600307",
							"locale": "en-us",
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAF7",
										"name": "British Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAd7",
										"name": "Musician"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9179zqf?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Porch Swing Blues",
				"type": "event",
				"id": "G5dFZ9FtMA4Wh",
				"test": false,
				"url": "https://www.ticketweb.uk/event/porch-swing-blues-green-note-tickets/12008655?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-10T07:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-08-20T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-08-20",
						"localTime": "20:00:00",
						"dateTime": "2022-08-20T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6WW7H",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9FtMA4Wh?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Rollo Markee and Lewis Fielding",
				"type": "event",
				"id": "G5dFZ9uYlrsL8",
				"test": false,
				"url": "https://www.ticketweb.uk/event/rollo-markee-and-lewis-fielding-the-sound-lounge-sutton-tickets/12260855?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-28T20:10:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-08-20T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-08-20",
						"localTime": "20:00:00",
						"dateTime": "2022-08-20T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW71AQ5",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9uYlrsL8?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177b30?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Sound Lounge (Sutton)",
							"type": "venue",
							"id": "KovZ9177b30",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-sound-lounge-sutton-tickets-sutton/venue/414155",
							"locale": "en-de",
							"postalCode": "SM1 1NU ",
							"timezone": "Europe/London",
							"city": {
								"name": "Sutton"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "216-220 High Street"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 28,
								"ticketmaster": 28,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177b30?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Congo Faith Healers",
				"type": "event",
				"id": "G5dFZ9ajaWkoq",
				"test": false,
				"url": "https://www.ticketweb.uk/event/congo-faith-healers-green-note-tickets/12060285?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-23T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-08-27T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-08-27",
						"localTime": "20:30:00",
						"dateTime": "2022-08-27T19:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6XTS3",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9ajaWkoq?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917oAuf?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Congo Faith Healers",
							"type": "attraction",
							"id": "K8vZ917oAuf",
							"test": false,
							"url": "https://www.ticketmaster.com/congo-faith-healers-tickets/artist/1853913",
							"locale": "en-us",
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917oAuf?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Andy Twyman",
				"type": "event",
				"id": "G5dFZ9F6qO4tE",
				"test": false,
				"url": "https://www.ticketweb.uk/event/andy-twyman-green-note-tickets/11977075?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-01T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-03T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-03",
						"localTime": "20:00:00",
						"dateTime": "2022-09-03T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6WDUN",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9F6qO4tE?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Buffalo Nichols",
				"type": "event",
				"id": "G5dFZ9AdNgs-0",
				"test": false,
				"url": "https://www.ticketweb.uk/event/buffalo-nichols-the-lexington-tickets/11818085?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-02-18T10:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-05T11:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-05",
						"localTime": "19:30:00",
						"dateTime": "2022-09-05T18:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6TOJ1",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9AdNgs-0?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917_9N0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177xRf?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Lexington",
							"type": "venue",
							"id": "KovZ9177xRf",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-lexington-tickets-london/venue/435054",
							"locale": "en-de",
							"postalCode": "N1 9JB",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "96-98 Pentonville Road"
							},
							"location": {
								"longitude": "-0.111874",
								"latitude": "51.531721"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"willCallDetail": "Tickets held for collection can be collected from the venue on the day of the event. Please take the credit card used to make the booking and your Ticketmaster reference number with you."
							},
							"parkingDetail": "There are several car parks near to the venue.",
							"accessibleSeatingDetail": "Please contact the venue for information on: 0207 837 8357",
							"generalInfo": {
								"generalRule": "No illegal substances. No smoking."
							},
							"upcomingEvents": {
								"_total": 27,
								"ticketmaster": 27,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 837 8357",
								"adaCustomCopy": "To better accommodate your needs, The Lexington has requested that all Accessible Ticketing requests be solicited only through their representatives. Please contact a The Lexington representative for further help with your ticket purchase.*   Advance ticket purchase may be required.* Box office information is subject to change.",
								"adaHours": "Monday to Friday 10am - 3pm - TBC **These hours change on a regular basis please call the venue for more info**"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177xRf?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Buffalo Nichols",
							"type": "attraction",
							"id": "K8vZ917_9N0",
							"test": false,
							"url": "https://www.ticketmaster.com/buffalo-nichols-tickets/artist/2786107",
							"locale": "en-us",
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/2ea/8be3d654-e6e9-411a-9d78-f5e966e012ea_1590991_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAd7",
										"name": "Musician"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 8,
								"mfx-nl": 1,
								"ticketweb": 2,
								"ticketmaster": 5,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917_9N0?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Mark Harrison",
				"type": "event",
				"id": "G5dFZ9udo6Awe",
				"test": false,
				"url": "https://www.ticketweb.uk/event/mark-harrison-green-note-tickets/12228995?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-16T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-07T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-07",
						"localTime": "20:30:00",
						"dateTime": "2022-09-07T19:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW70R5F",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9udo6Awe?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Otis Redding: Reuben Richards & the Jezebel Sextet",
				"type": "event",
				"id": "G5dFZ91ClpZnN",
				"test": false,
				"url": "https://www.ticketweb.uk/event/otis-redding-reuben-richards-boisdale-canary-wharf-tickets/12079205?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-29T11:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-07T20:30:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-07",
						"localTime": "21:30:00",
						"dateTime": "2022-09-07T20:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6Y94L",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ91ClpZnN?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Boisdale, Canary Wharf",
							"type": "venue",
							"id": "KovZpZAnvalA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/boisdale-canary-wharf-tickets-london/venue/417463",
							"locale": "en-de",
							"postalCode": "E14 4QT",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "Cabot Place"
							},
							"location": {
								"longitude": "-0.022271",
								"latitude": "51.505252"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								},
								{
									"name": "South",
									"id": "203"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								},
								{
									"id": 603
								}
							],
							"upcomingEvents": {
								"_total": 153,
								"ticketmaster": 153,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Kat Pearson",
				"type": "event",
				"id": "G5dFZ91IzvsPU",
				"test": false,
				"url": "https://www.ticketweb.uk/event/kat-pearson-green-note-tickets/12105335?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-05-10T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-16T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-16",
						"localTime": "20:30:00",
						"dateTime": "2022-09-16T19:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6YM9N",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ91IzvsPU?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Ewan Bleach",
				"type": "event",
				"id": "G5dFZ9FMSnpeC",
				"test": false,
				"url": "https://www.ticketweb.uk/event/ewan-bleach-green-note-tickets/12016335?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-05-21T07:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-17T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-17",
						"localTime": "20:00:00",
						"dateTime": "2022-09-17T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6X12R",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9FMSnpeC?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "The Laura Holland Duo",
				"type": "event",
				"id": "G5dFZ9FIWFAXa",
				"test": false,
				"url": "https://www.ticketweb.uk/event/the-laura-holland-duo-green-note-tickets/12009275?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-10T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-18T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-18",
						"localTime": "20:00:00",
						"dateTime": "2022-09-18T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6WWJZ",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9FIWFAXa?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "The Cosimo Matassa Project",
				"type": "event",
				"id": "G5dFZ9a2g_wqE",
				"test": false,
				"url": "https://www.ticketweb.uk/event/the-cosimo-matassa-project-green-note-tickets/12038785?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-19T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-22T17:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-22",
						"localTime": "20:30:00",
						"dateTime": "2022-09-22T19:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6XFPP",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9a2g_wqE?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Cash Savage & the Last Drinks",
				"type": "event",
				"id": "1AdFZpdGkDN6Kz5",
				"test": false,
				"url": "https://www.ticketweb.uk/event/cash-savage-the-last-the-grace-tickets/10397245?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2020-02-06T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-09-27T15:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-09-27",
						"localTime": "19:00:00",
						"dateTime": "2022-09-27T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW66SN1",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/1AdFZpdGkDN6Kz5?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9174rU7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ917A2JV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Grace, London",
							"type": "venue",
							"id": "KovZ917A2JV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-grace-london-tickets-london/venue/256718",
							"locale": "en-de",
							"postalCode": "N5 1RD",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "20-22 Highbury Cres",
								"line2": "Highbury East"
							},
							"location": {
								"longitude": "-0.103742",
								"latitude": "51.546706"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 60,
								"ticketmaster": 60,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "Disability information:For accessibility information please contact the venue on 020 7619 6721To arrange an essential companion ticket, please book a standard entry ticket and then email proof of eligibility through to customerenquiries@alttickets.com. Any of the below are accepted, in addition we will review an application without these forms of evidence on a case-by-case basis. • Front page of DLA / PIP• Front page of Attendance Allowance letter • Evidence that registered severely sight impaired• Recognised Assistance Dog ID card• Access CardOnce your request has been received and approved we will email you back with further information as to how your essential companion ticket will be issued",
								"adaCustomCopy": "To better accommodate your needs, London Thousand Island has requested that all Accessible Ticketing requests be solicited only through their representatives. Please contact a London Thousand Island representative for further help with your ticket purchase.* Advance ticket purchase may be required.* Box office information is subject to change.",
								"adaHours": "t.b.c"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ917A2JV?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Cash Savage and The Last Drinks",
							"type": "attraction",
							"id": "K8vZ9174rU7",
							"test": false,
							"url": "https://www.ticketmaster.com/cash-savage-and-the-last-drinks-tickets/artist/2291233",
							"locale": "en-us",
							"externalLinks": {
								"facebook": [
									{
										"url": "https://www.facebook.com/savagedrinks"
									}
								],
								"musicbrainz": [
									{
										"id": "100ae730-e9c3-472a-a36e-bc06a5772a93"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/316/a4c618d9-135a-42ab-bcc5-8cf92c7f3316_206221_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAA1",
										"name": "Country Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7l1",
										"name": "Group"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vA71",
										"name": "Band"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9174rU7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Matt Andersen",
				"type": "event",
				"id": "G5dFZ9GLkxZVw",
				"test": false,
				"url": "https://www.ticketweb.uk/event/matt-andersen-omeara-tickets/12190915?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-10T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-10-14T10:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-10-14",
						"localTime": "18:30:00",
						"dateTime": "2022-10-14T17:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW704YJ",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9GLkxZVw?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917u3KV?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ917A50V?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "London Omeara",
							"type": "venue",
							"id": "KovZ917A50V",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/london-omeara-tickets-london/venue/256700",
							"locale": "en-de",
							"postalCode": "SE1 0AB",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "6 O'Meara Street"
							},
							"location": {
								"longitude": "-0.0989804",
								"latitude": "51.5041428"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 30,
								"ticketmaster": 30,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0844 811 0051 ",
								"adaCustomCopy": "To better accommodate your needs, London Omeara has requested that all Accessible Seating requests be solicited only through their representatives. Please contact a London Omeara representative for further help with your ticket purchase.*   Advance ticket purchase may be required.* Box office information is subject to change.",
								"adaHours": "t.b.c"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ917A50V?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Matt Andersen",
							"type": "attraction",
							"id": "K8vZ917u3KV",
							"test": false,
							"url": "https://www.ticketmaster.com/matt-andersen-tickets/artist/1132536",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/user/mattandersenmusic"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/matt_andersen"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/matt-andersen/201871858?uo=4&app=music"
									}
								],
								"wiki": [
									{
										"url": "https://en.wikipedia.org/wiki/Matt_Andersen"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/mattandersenofficial"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/2dOaom01dm1MhNLnyHpWD5"
									}
								],
								"musicbrainz": [
									{
										"id": "351f742b-35b8-4ebc-9646-78790503fcda"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/mattandersenmusic/"
									}
								],
								"homepage": [
									{
										"url": "http://www.stubbyfingers.ca/"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/ca8/b2a86a77-7d2f-47c9-b07b-11290e95cca8_1710311_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 11,
								"ticketmaster": 11,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917u3KV?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Whitney Houston: Janine Johnson",
				"type": "event",
				"id": "G5dFZ96bfpeC0",
				"test": false,
				"url": "https://www.ticketweb.uk/event/whitney-houston-janine-johnson-boisdale-canary-wharf-tickets/11938155?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-03-22T12:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-10-19T20:30:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-10-19",
						"localTime": "21:30:00",
						"dateTime": "2022-10-19T20:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6VSVD",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ96bfpeC0?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917pAOf?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Boisdale, Canary Wharf",
							"type": "venue",
							"id": "KovZpZAnvalA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/boisdale-canary-wharf-tickets-london/venue/417463",
							"locale": "en-de",
							"postalCode": "E14 4QT",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "Cabot Place"
							},
							"location": {
								"longitude": "-0.022271",
								"latitude": "51.505252"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								},
								{
									"name": "South",
									"id": "203"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								},
								{
									"id": 603
								}
							],
							"upcomingEvents": {
								"_total": 153,
								"ticketmaster": 153,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Janine Johnson",
							"type": "attraction",
							"id": "K8vZ917pAOf",
							"test": false,
							"url": "https://www.ticketmaster.com/janine-johnson-tickets/artist/2384105",
							"locale": "en-us",
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAk6",
										"name": "Jazz Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917pAOf?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Christone 'Kingfish' Ingram",
				"type": "event",
				"id": "G5vHZ9GM52dMX",
				"test": false,
				"url": "https://www.ticketmaster.co.uk/christone-kingfish-ingram-london-10-22-2022/event/1F005CCDCB3C3DFE",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-17T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-10-22T17:00:00Z"
					},
					"presales": [
						{
							"startDateTime": "2022-06-15T09:00:00Z",
							"endDateTime": "2022-06-17T08:00:00Z",
							"name": "O2 Priority"
						}
					]
				},
				"dates": {
					"start": {
						"localDate": "2022-10-22",
						"localTime": "19:00:00",
						"dateTime": "2022-10-22T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"promoter": {
					"id": "2895",
					"name": "KILIMANJARO",
					"description": "KILIMANJARO / NTL / GBR"
				},
				"promoters": [
					{
						"id": "2895",
						"name": "KILIMANJARO",
						"description": "KILIMANJARO / NTL / GBR"
					},
					{
						"id": "4437",
						"name": "ACADEMY MUSIC GROUP (O2 SHEPHERD'S BUSH EMPIRE)",
						"description": "ACADEMY MUSIC GROUP (O2 SHEPHERD'S BUSH EMPIRE) / NTL / GBR"
					}
				],
				"pleaseNote": "No under 8s. Under 14s must be accompanied by an adult over 18 years old at all times and seated in the balcony. Under 25s require ID to purchase alcohol. No smoking. A maximum of 6 tickets per person and per household applies. Tickets in excess of 6 will be cancelled.",
				"priceRanges": [
					{
						"type": "standard",
						"currency": "GBP",
						"min": 27.0,
						"max": 27.0
					},
					{
						"type": "standard including fees",
						"currency": "GBP",
						"min": 32.15,
						"max": 32.15
					}
				],
				"seatmap": {
					"staticUrl": "https://s1.ticketm.net/uk/tmimages/venue/maps/uk5/14831s.gif"
				},
				"accessibility": {},
				"ticketLimit": {
					"info": "Please note: There is a ticket limit of 6 tickets per person and per credit card on this event"
				},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "UK5:EOS2210",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5vHZ9GM52dMX?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177AO7?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "O2 Shepherds Bush Empire",
							"type": "venue",
							"id": "KovZ9177AO7",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/o2-shepherds-bush-empire-tickets-london/venue/254468",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/888v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "W12 8TT",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "Shepherds Bush Green"
							},
							"location": {
								"longitude": "-0.224435",
								"latitude": "51.503525"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Phone: +44 (0)20 8354 3300 Email: mail@o2shepherdsbushempire.co.uk",
								"openHoursDetail": "From 4pm on Show Days Only",
								"acceptedPaymentDetail": "They venue accepts all cards including American Express, as well as Apple Pay and Android Pay.",
								"willCallDetail": "Tickets left at the box office for collection may be picked up on the day of the show from 16:00 onwards. You must take the credit card and Ticketmaster Booking Reference Number as proof of purchase. If someone else bought tickets for you to collect, bring a Letter of Authorization from whoever booked them for you, stating your name, the booking reference and the last four digits of the card they used to buy them."
							},
							"parkingDetail": "O2 Shepherd's Bush Empire doesn’t have its own parking facilities, and street parking locally is limited, so be sure to check the pay and display options in the area. There is a car park at Westfield London nearby; the postcode for sat nav is W12 7SL. Disabled Parking: There’s a bay in Pennard Road to the rear of our venue and Blue Badge spaces are available at Westfield London on Ariel Way, W12 7SL.",
							"accessibleSeatingDetail": "https://academymusicgroup.com/o2shepherdsbushempire/access O2 Shepherd's Bush Empire strives to make all their shows accessible to everyone. Wheelchair spaces These are available when you book, but they'Â Â re limited on a first come, first served basis and in stalls. Viewing area We understand that you want to be with your friends, but due to space limitations, we may only be able to allow you and your companion into an accessible area and cannot always guarantee seated options. Booking tickets To book tickets by phone, call us between 10.30am and 5.30pm, Monday to Friday, on +44 (0) 20 8354 3300 or email disabledbookings@o2shepherdsbushempire.co.uk You can also contact through Next Generation Text Service by 18002 +44 (0)20 8354 3300",
							"generalInfo": {
								"generalRule": "For More info and general questions please see: https://academymusicgroup.com/o2shepherdsbushempire/faq",
								"childRule": "It’s always best to check the age restrictions for each event in advance. No under 8s. 8-13 years, you’ll need to attend with an adult (18+). If you’re under 14 you’ll, you’ll need to come with an adult (someone 18+) and only book balcony tickets please. Clubs: Strictly over 18s Always look for admission age policies before you book and remember to carry proof of age if you need it."
							},
							"upcomingEvents": {
								"_total": 94,
								"ticketmaster": 94,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "Email: mail@o2shepherdsbushempire.co.uk",
								"adaCustomCopy": "Booking tickets: Please email mail@o2shepherdsbushempire.co.uk  before you buy your tickets between 10.30am-5.30pm, Monday to Friday to advise your access and personal assistant requirements. Please bring your booking confirmation to the show. Companion ticket If you need a ticket for a companion, carer or personal assistant, please just let the venue know when you book. They offer one companion ticket, free of charge to provide the support needed and additional assistance during the course of an emergency evacuation and so you know, proof of eligibility will be required. Alternatively, if you have an Access Card please provide your full name and the card number. View the venue's full Essential Companion Policy here: https://academymusicgroup.com/o2shepherdsbushempire/content/academy-music-group-companion-policy",
								"adaHours": "Mon-Fri, Excluding Bank Holidays 10:30am-5:30pm"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177AO7?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "My Baby",
				"type": "event",
				"id": "G5dFZ9apIQp5f",
				"test": false,
				"url": "https://www.ticketweb.uk/event/my-baby-the-garage-tickets/12044175?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-25T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-10-25T15:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-10-25",
						"localTime": "19:00:00",
						"dateTime": "2022-10-25T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6XIW5",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9apIQp5f?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917K6A7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177Akf?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Garage",
							"type": "venue",
							"id": "KovZ9177Akf",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-garage-tickets-london/venue/254158",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2295v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "N5 1RD",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "20-22 Highbury Corner"
							},
							"location": {
								"longitude": "-0.103855",
								"latitude": "51.546708"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 57,
								"ticketmaster": 57,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "Please email boxoffice@thegarage.co.uk or phone 020 7619 6727 for specific requests, enquiries or comments regarding access/personal needs and a member of the team will endeavor to accommodate such requirements.",
								"adaCustomCopy": "The  Relentless Garage takes the needs of disabled customers very seriously and actively encourages people of all abilities to attend the events scheduled at their venue. Though built in Victorian times, the building has been modernized to allow wheelchair access via front of house to the Ground floor level (please note there is no direct backstage disabled access). Due to licensing and Health and Safety Assessments, we regret the number of wheelchairs that we can admit to the building is limited. In order to ensure that all disabled patrons to the Garage are adequately catered for, we request that prior to booking all disabled customers contact the venue (boxoffice@thegarage.co.uk, 020 7619 6727) in advance of ticket purchase to explain the nature of their disability.  On the evening of an event, we do advise disabled customers to arrive at the venue 15 minutes prior to doors, ideally accompanied by a companion over 18 years old who will be admitted free of charge.The free companion ticket is available to patrons who are registered disabled. Both the ticket to be paid for and the free companion ticket needs to be booked in advance.",
								"adaHours": "not applicable"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177Akf?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "My Baby",
							"type": "attraction",
							"id": "K8vZ917K6A7",
							"test": false,
							"url": "https://www.ticketmaster.com/my-baby-tickets/artist/2078263",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/channel/UCT1Mc-nRFGFFbbeBHZh51AQ"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/mybabywashere"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/my-baby/296635193"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/0c103ZyWDycpfVxR0lNrjm"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/MYBABYMUSIC/"
									}
								],
								"musicbrainz": [
									{
										"id": "c3d11b9e-bb64-493d-ab03-4465dd2ae967"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/mybabymybabymybaby/"
									}
								],
								"homepage": [
									{
										"url": "https://www.mybabywashere.com"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/bb4/190227af-9d5d-4d01-b618-0561dfba5bb4_435321_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 4,
								"mfx-nl": 1,
								"ticketmaster": 3,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917K6A7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Samantha Fish",
				"type": "event",
				"id": "G5vHZp6lDSvv0",
				"test": false,
				"url": "https://www.ticketmaster.co.uk/samantha-fish-london-10-26-2022/event/1F00587AFBCC1064",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2020-04-03T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-10-26T17:00:00Z"
					},
					"presales": [
						{
							"startDateTime": "2020-04-01T09:00:00Z",
							"endDateTime": "2020-04-03T09:00:00Z",
							"name": "O2 Presale"
						}
					]
				},
				"dates": {
					"start": {
						"localDate": "2022-10-26",
						"localTime": "19:00:00",
						"dateTime": "2022-10-26T18:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "rescheduled"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"promoter": {
					"id": "5098",
					"name": "DH PROMOTIONS LTD",
					"description": "DH PROMOTIONS LTD / NTL / GBR"
				},
				"promoters": [
					{
						"id": "5098",
						"name": "DH PROMOTIONS LTD",
						"description": "DH PROMOTIONS LTD / NTL / GBR"
					},
					{
						"id": "4437",
						"name": "ACADEMY MUSIC GROUP (O2 SHEPHERD'S BUSH EMPIRE)",
						"description": "ACADEMY MUSIC GROUP (O2 SHEPHERD'S BUSH EMPIRE) / NTL / GBR"
					}
				],
				"pleaseNote": "No under 8s. Under 14s must be accompanied by an adult over 18 years old at all times and seated in the balcony. Under 25s require ID to purchase alcohol. No smoking. A max of 6 tickets per person and per household applies. Tickets in excess of 6 will be cancelled.",
				"priceRanges": [
					{
						"type": "standard",
						"currency": "GBP",
						"min": 23.5,
						"max": 28.5
					},
					{
						"type": "standard including fees",
						"currency": "GBP",
						"min": 27.95,
						"max": 33.6
					}
				],
				"seatmap": {
					"staticUrl": "https://s1.ticketm.net/uk/tmimages/venue/maps/uk5/14831s.gif"
				},
				"accessibility": {},
				"ticketLimit": {
					"info": "Please note: There is a ticket limit of 6 tickets per person and per credit card on this event"
				},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "UK5:EOY2610",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5vHZp6lDSvv0?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9178Ucf?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177AO7?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "O2 Shepherds Bush Empire",
							"type": "venue",
							"id": "KovZ9177AO7",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/o2-shepherds-bush-empire-tickets-london/venue/254468",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/888v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "W12 8TT",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "Shepherds Bush Green"
							},
							"location": {
								"longitude": "-0.224435",
								"latitude": "51.503525"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Phone: +44 (0)20 8354 3300 Email: mail@o2shepherdsbushempire.co.uk",
								"openHoursDetail": "From 4pm on Show Days Only",
								"acceptedPaymentDetail": "They venue accepts all cards including American Express, as well as Apple Pay and Android Pay.",
								"willCallDetail": "Tickets left at the box office for collection may be picked up on the day of the show from 16:00 onwards. You must take the credit card and Ticketmaster Booking Reference Number as proof of purchase. If someone else bought tickets for you to collect, bring a Letter of Authorization from whoever booked them for you, stating your name, the booking reference and the last four digits of the card they used to buy them."
							},
							"parkingDetail": "O2 Shepherd's Bush Empire doesn’t have its own parking facilities, and street parking locally is limited, so be sure to check the pay and display options in the area. There is a car park at Westfield London nearby; the postcode for sat nav is W12 7SL. Disabled Parking: There’s a bay in Pennard Road to the rear of our venue and Blue Badge spaces are available at Westfield London on Ariel Way, W12 7SL.",
							"accessibleSeatingDetail": "https://academymusicgroup.com/o2shepherdsbushempire/access O2 Shepherd's Bush Empire strives to make all their shows accessible to everyone. Wheelchair spaces These are available when you book, but they'Â Â re limited on a first come, first served basis and in stalls. Viewing area We understand that you want to be with your friends, but due to space limitations, we may only be able to allow you and your companion into an accessible area and cannot always guarantee seated options. Booking tickets To book tickets by phone, call us between 10.30am and 5.30pm, Monday to Friday, on +44 (0) 20 8354 3300 or email disabledbookings@o2shepherdsbushempire.co.uk You can also contact through Next Generation Text Service by 18002 +44 (0)20 8354 3300",
							"generalInfo": {
								"generalRule": "For More info and general questions please see: https://academymusicgroup.com/o2shepherdsbushempire/faq",
								"childRule": "It’s always best to check the age restrictions for each event in advance. No under 8s. 8-13 years, you’ll need to attend with an adult (18+). If you’re under 14 you’ll, you’ll need to come with an adult (someone 18+) and only book balcony tickets please. Clubs: Strictly over 18s Always look for admission age policies before you book and remember to carry proof of age if you need it."
							},
							"upcomingEvents": {
								"_total": 94,
								"ticketmaster": 94,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "Email: mail@o2shepherdsbushempire.co.uk",
								"adaCustomCopy": "Booking tickets: Please email mail@o2shepherdsbushempire.co.uk  before you buy your tickets between 10.30am-5.30pm, Monday to Friday to advise your access and personal assistant requirements. Please bring your booking confirmation to the show. Companion ticket If you need a ticket for a companion, carer or personal assistant, please just let the venue know when you book. They offer one companion ticket, free of charge to provide the support needed and additional assistance during the course of an emergency evacuation and so you know, proof of eligibility will be required. Alternatively, if you have an Access Card please provide your full name and the card number. View the venue's full Essential Companion Policy here: https://academymusicgroup.com/o2shepherdsbushempire/content/academy-music-group-companion-policy",
								"adaHours": "Mon-Fri, Excluding Bank Holidays 10:30am-5:30pm"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177AO7?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Samantha Fish",
							"type": "attraction",
							"id": "K8vZ9178Ucf",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/samantha-fish-tickets/artist/1833264",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/channel/UCaTmuzKbejaJBvfeHLNYJqQ"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/Samantha_Fish"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/samantha-fish/416163164"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/samanthafishmusic"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/5HsS48kuvghKcNpwOaAvB5?autoplay=true"
									}
								],
								"musicbrainz": [
									{
										"id": "bcf3ad0b-4eae-4c8b-a292-9f4c573aa27a"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/samanthafishmusic/"
									}
								],
								"homepage": [
									{
										"url": "http://www.samanthafish.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/23c/c88dfecd-db42-4181-a36a-dcb0ab0d923c_1509801_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 28,
								"mfx-dk": 1,
								"mfx-nl": 1,
								"tmr": 5,
								"ticketweb": 1,
								"ticketmaster": 18,
								"_filtered": 0,
								"mfx-fi": 2
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9178Ucf?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Psychobilly Freakout Festival 2022",
				"type": "event",
				"id": "G5dFZ9u6u4JIa",
				"test": false,
				"url": "https://www.ticketweb.uk/event/psychobilly-freakout-festival-2022-new-cross-inn-tickets/12232725?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-17T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-10-28T13:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-10-28",
						"localTime": "14:00:00",
						"dateTime": "2022-10-28T13:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW70TKN",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9u6u4JIa?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917KJw7?locale=en-us"
						},
						{
							"href": "/discovery/v2/attractions/K8vZ917GjO0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAt6AEA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "New Cross Inn",
							"type": "venue",
							"id": "KovZpZAt6AEA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/new-cross-inn-tickets-london/venue/416565",
							"locale": "en-de",
							"postalCode": "SE14 6AS",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "323 New Cross Road"
							},
							"location": {
								"longitude": "-0.03838",
								"latitude": "51.475524"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 41,
								"ticketmaster": 41,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAt6AEA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "King Salami and Cumberland 3",
							"type": "attraction",
							"id": "K8vZ917KJw7",
							"test": false,
							"url": "https://www.ticketmaster.com/king-salami-and-cumberland-3-tickets/artist/2138405",
							"locale": "en-us",
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917KJw7?locale=en-us"
								}
							}
						},
						{
							"name": "Long Tall Texans",
							"type": "attraction",
							"id": "K8vZ917GjO0",
							"test": false,
							"url": "https://www.ticketmaster.com/long-tall-texans-tickets/artist/776836",
							"locale": "en-us",
							"externalLinks": {
								"facebook": [
									{
										"url": "https://www.facebook.com/longtalltexans"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAeA",
										"name": "Rock"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7v6F1",
										"name": "Pop"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917GjO0?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Charley Crockett - Restaurant Tables",
				"type": "event",
				"id": "G5dFZ9FBfRpeT",
				"test": false,
				"url": "https://www.ticketweb.uk/event/charley-crockett-jazz-cafe-tickets/12018315?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-22T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-01T20:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-01",
						"localTime": "19:00:00",
						"dateTime": "2022-11-01T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6X2CV",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9FBfRpeT?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9174Wf0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Charley Crockett",
							"type": "attraction",
							"id": "K8vZ9174Wf0",
							"test": false,
							"url": "https://www.ticketmaster.com/charley-crockett-tickets/artist/2366477",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/charleycrockett"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/charleycrockett"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/charley-crockett/987849844"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/charleycrockettmusic/"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/3BJX1nYizKvWpZTY5HOAr4"
									}
								],
								"instagram": [
									{
										"url": "http://instagram.com/charleycrockett"
									}
								],
								"homepage": [
									{
										"url": "https://www.charleycrockett.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAd7",
										"name": "Musician"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 33,
								"tmr": 12,
								"ticketweb": 3,
								"ticketmaster": 18,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9174Wf0?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Charley Crockett",
				"type": "event",
				"id": "G5dFZ9FBfnkeD",
				"test": false,
				"url": "https://www.ticketweb.uk/event/charley-crockett-jazz-cafe-tickets/12018295?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-22T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-01T20:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-01",
						"localTime": "19:00:00",
						"dateTime": "2022-11-01T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6X2CB",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9FBfnkeD?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9174Wf0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Charley Crockett",
							"type": "attraction",
							"id": "K8vZ9174Wf0",
							"test": false,
							"url": "https://www.ticketmaster.com/charley-crockett-tickets/artist/2366477",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/charleycrockett"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/charleycrockett"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/charley-crockett/987849844"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/charleycrockettmusic/"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/3BJX1nYizKvWpZTY5HOAr4"
									}
								],
								"instagram": [
									{
										"url": "http://instagram.com/charleycrockett"
									}
								],
								"homepage": [
									{
										"url": "https://www.charleycrockett.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAd7",
										"name": "Musician"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 33,
								"tmr": 12,
								"ticketweb": 3,
								"ticketmaster": 18,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9174Wf0?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Charley Crockett",
				"type": "event",
				"id": "G5vHZ9Fmg8VHC",
				"test": false,
				"url": "https://www.ticketmaster.co.uk/charley-crockett-london-11-01-2022/event/1F005C8BB5434F0E",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-22T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-01T19:00:00Z"
					},
					"presales": [
						{
							"startDateTime": "2022-04-20T09:00:00Z",
							"endDateTime": "2022-04-22T08:00:00Z",
							"name": "O2 Priority"
						},
						{
							"startDateTime": "2022-04-21T09:00:00Z",
							"endDateTime": "2022-04-22T08:00:00Z",
							"name": "Live Nation Presale"
						}
					]
				},
				"dates": {
					"start": {
						"localDate": "2022-11-01",
						"localTime": "19:00:00",
						"dateTime": "2022-11-01T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"promoter": {
					"id": "4110",
					"name": "LIVE NATION MUSIC UK LTD",
					"description": "LIVE NATION MUSIC UK LTD / NTL / GBR"
				},
				"promoters": [
					{
						"id": "4110",
						"name": "LIVE NATION MUSIC UK LTD",
						"description": "LIVE NATION MUSIC UK LTD / NTL / GBR"
					},
					{
						"id": "4110",
						"name": "LIVE NATION MUSIC UK LTD",
						"description": "LIVE NATION MUSIC UK LTD / NTL / GBR"
					}
				],
				"pleaseNote": "Over 18s only. A max of 6 tickets per person and per household applies. Tickets in excess of 6 will be cancelled.",
				"priceRanges": [
					{
						"type": "standard including fees",
						"currency": "GBP",
						"min": 17.6,
						"max": 17.6
					},
					{
						"type": "standard",
						"currency": "GBP",
						"min": 16.0,
						"max": 16.0
					}
				],
				"accessibility": {},
				"ticketLimit": {
					"info": "Please note: There is a ticket Limit of 6 tickets per person and per credit card on this event"
				},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "UK5:EJZ0111",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5vHZ9Fmg8VHC?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9174Wf0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Charley Crockett",
							"type": "attraction",
							"id": "K8vZ9174Wf0",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/charley-crockett-tickets/artist/5228806",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/charleycrockett"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/charleycrockett"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/charley-crockett/987849844"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/charleycrockettmusic/"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/3BJX1nYizKvWpZTY5HOAr4"
									}
								],
								"instagram": [
									{
										"url": "http://instagram.com/charleycrockett"
									}
								],
								"homepage": [
									{
										"url": "https://www.charleycrockett.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/954/1b3f89e6-b933-4df9-b68d-8e94c7026954_1471271_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAd7",
										"name": "Musician"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 33,
								"tmr": 12,
								"ticketweb": 3,
								"ticketmaster": 18,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9174Wf0?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Soul Kinda Wonderful: the Drifters",
				"type": "event",
				"id": "G5dFZ9F9iE0fE",
				"test": false,
				"url": "https://www.ticketweb.uk/event/soul-kinda-wonderful-the-drifters-boisdale-canary-wharf-tickets/11992755?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-05T11:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-04T21:30:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-04",
						"localTime": "21:30:00",
						"dateTime": "2022-11-04T21:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6WMHR",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9F9iE0fE?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Boisdale, Canary Wharf",
							"type": "venue",
							"id": "KovZpZAnvalA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/boisdale-canary-wharf-tickets-london/venue/417463",
							"locale": "en-de",
							"postalCode": "E14 4QT",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "Cabot Place"
							},
							"location": {
								"longitude": "-0.022271",
								"latitude": "51.505252"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								},
								{
									"name": "South",
									"id": "203"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								},
								{
									"id": 603
								}
							],
							"upcomingEvents": {
								"_total": 153,
								"ticketmaster": 153,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Jo Harman & Mike Farris",
				"type": "event",
				"id": "G5dFZpIwYReEI",
				"test": false,
				"url": "https://www.ticketweb.uk/event/jo-harman-mike-farris-jazz-cafe-tickets/10945615?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/uk/dbimages/42621a",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/uk/dbimages/42620a",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2021-04-13T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-05T20:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-05",
						"localTime": "19:00:00",
						"dateTime": "2022-11-05T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6EFDL",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZpIwYReEI?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917orw7?locale=en-us"
						},
						{
							"href": "/discovery/v2/attractions/K8vZ917C4x7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Jo Harman",
							"type": "attraction",
							"id": "K8vZ917orw7",
							"test": false,
							"url": "https://www.ticketmaster.com/jo-harman-tickets/artist/1891440",
							"locale": "en-us",
							"externalLinks": {
								"musicbrainz": [
									{
										"id": "b1213b90-2094-4697-9120-b270ba4b3e89"
									}
								],
								"homepage": [
									{
										"url": "http://joharman.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/uk/dbimages/42621a",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/uk/dbimages/42620a",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 3,
								"ticketmaster": 3,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917orw7?locale=en-us"
								}
							}
						},
						{
							"name": "Mike Farris",
							"type": "attraction",
							"id": "K8vZ917C4x7",
							"test": false,
							"url": "https://www.ticketmaster.com/mike-farris-tickets/artist/1191868",
							"locale": "en-us",
							"externalLinks": {
								"lastfm": [
									{
										"url": "http://www.last.fm/music/Mike%20Farris"
									}
								],
								"wiki": [
									{
										"url": "https://en.wikipedia.org/wiki/Mike_Farris_(musician)"
									}
								],
								"musicbrainz": [
									{
										"id": "82248531-028c-4e06-b5b2-240a74ca3691"
									}
								],
								"homepage": [
									{
										"url": "http://www.mikefarrismusic.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/bff/0bda5132-d746-4faa-9e23-99717a5afbff_1452761_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAeA",
										"name": "Rock"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7v6F1",
										"name": "Pop"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917C4x7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Jo Harman & Mike Farris - Restaurant Tables",
				"type": "event",
				"id": "G5dFZpIwsVwEY",
				"test": false,
				"url": "https://www.ticketweb.uk/event/jo-harman-mike-farris-jazz-cafe-tickets/10945635?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/uk/dbimages/42621a",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/uk/dbimages/42620a",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2021-04-13T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-05T23:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-05",
						"localTime": "19:00:00",
						"dateTime": "2022-11-05T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6EFE5",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZpIwsVwEY?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917orw7?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Jazz Cafe",
							"type": "venue",
							"id": "KovZpZAnaJaA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/jazz-cafe-tickets-london/venue/255319",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2444v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "NW1 7PG",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "5 Parkway"
							},
							"location": {
								"longitude": "-0.143343",
								"latitude": "51.53859"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "Ticketmaster UK 0844 844 0444. Box Office No 020 7485 6834 for information and restaurant bookings. Calls will cost 7 ppm plus your network access charge.",
								"openHoursDetail": "Monday to Thursday 10am to 6pm, Friday 12pm to 6pm, Saturday 10am to 6pm.",
								"acceptedPaymentDetail": "credit and debit cards (no AMEX) - There is no Box Office on site.",
								"willCallDetail": "Tickets booked over the phone directly with the venue can be collected from the venue on the day of the show from 7pm onwards, please just bring your confirmation e-mail along with you."
							},
							"parkingDetail": "Limited on street parking only. Strongly advise public transport.",
							"accessibleSeatingDetail": "Customers requesting Accessible Tickets can buy their tickets from Ticketmaster via www.ticketmaster.co.uk and do not have to explain their disability.Wheelchair customers do not need to contact the venue in advance;an assistant will be admitted free on arrival.If you have a non-visible disability and need to bring an assistant please call 0207 688 8899.",
							"generalInfo": {
								"generalRule": "No video cameras, cameras or recording devices allowed. No food. No bottles or cans. No alcohol or illegal substances. Smoking is not permitted in this venue.",
								"childRule": "Strictly Over 18s only at all times. Valid ID will be required on entry."
							},
							"upcomingEvents": {
								"_total": 284,
								"ticketmaster": 284,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 485 6834 ",
								"adaCustomCopy": "The venue is wheelchair accessible, unfortunately the restaurant is not. Companions/Carers will get free entrance, just purchase a General Admission ticket via www.ticketmaster.co.uk and then email the name of your carer to info@thejazzcafelondon.com they will then add them to the guest list. If you have trouble standing for long periods of time just let a manager know upon arrival and a chair will be provided by the side of the stage.",
								"adaHours": "10am-5.30pm Mon-Fri"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnaJaA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Jo Harman",
							"type": "attraction",
							"id": "K8vZ917orw7",
							"test": false,
							"url": "https://www.ticketmaster.com/jo-harman-tickets/artist/1891440",
							"locale": "en-us",
							"externalLinks": {
								"musicbrainz": [
									{
										"id": "b1213b90-2094-4697-9120-b270ba4b3e89"
									}
								],
								"homepage": [
									{
										"url": "http://joharman.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/uk/dbimages/42621a",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/uk/dbimages/42620a",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 3,
								"ticketmaster": 3,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917orw7?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "A Night of Bond with Janine Johnson",
				"type": "event",
				"id": "G5dFZ9aMz8JbE",
				"test": false,
				"url": "https://www.ticketweb.uk/event/a-night-of-bond-with-boisdale-canary-wharf-tickets/12078725?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-04-29T11:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-10T21:30:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-10",
						"localTime": "21:30:00",
						"dateTime": "2022-11-10T21:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6Y5PT",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9aMz8JbE?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917pAOf?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Boisdale, Canary Wharf",
							"type": "venue",
							"id": "KovZpZAnvalA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/boisdale-canary-wharf-tickets-london/venue/417463",
							"locale": "en-de",
							"postalCode": "E14 4QT",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "Cabot Place"
							},
							"location": {
								"longitude": "-0.022271",
								"latitude": "51.505252"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								},
								{
									"name": "South",
									"id": "203"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								},
								{
									"id": 603
								}
							],
							"upcomingEvents": {
								"_total": 153,
								"ticketmaster": 153,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAnvalA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Janine Johnson",
							"type": "attraction",
							"id": "K8vZ917pAOf",
							"test": false,
							"url": "https://www.ticketmaster.com/janine-johnson-tickets/artist/2384105",
							"locale": "en-us",
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAk6",
										"name": "Jazz Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917pAOf?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Zeal & Ardor",
				"type": "event",
				"id": "G5dFZ91Rlrwo2",
				"test": false,
				"url": "https://www.ticketweb.uk/event/zeal-ardor-electric-brixton-tickets/12107065?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/57a/8b8ff326-c8ed-4e00-8a13-91e86fa1d57a_1028721_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-17T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-13T18:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-13",
						"localTime": "19:00:00",
						"dateTime": "2022-11-13T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6YNCJ",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ91Rlrwo2?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917pODV?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ91777RV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Electric Brixton",
							"type": "venue",
							"id": "KovZ91777RV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/electric-brixton-tickets-london/venue/253979",
							"locale": "en-de",
							"postalCode": "SW2 1RJ",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "1 Town Hall Parade",
								"line2": "Brixton Hill"
							},
							"location": {
								"longitude": "-0.117044",
								"latitude": "51.459846"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "0207 274 2290 Monday to Friday 10am-5pm",
								"openHoursDetail": "Doors open from advertised doors times, no box office pre doors.",
								"acceptedPaymentDetail": "Cash Only when tickets are available to be sold on the door.",
								"willCallDetail": "All tickets for Collection should be Print at Home tickets sent to customer directly."
							},
							"accessibleSeatingDetail": "Please contact venue for information 0207 274 2290",
							"generalInfo": {
								"generalRule": "No food or drink allowed into the venue",
								"childRule": "Please revert to show guidelines: Normally 14+ under 16s with an adult over 18 for live events"
							},
							"upcomingEvents": {
								"_total": 62,
								"ticketmaster": 62,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "0207 274 2290",
								"adaCustomCopy": "To better accommodate your needs, Electric Brixton has requested that all special seating accommodations be solicited only through their representatives. Please contact a Electric Brixton representative for further help with your ticket purchase.*   Advance ticket purchase may be required.* Box office information is subject to change.",
								"adaHours": "Mon-Fri 10:00-17:00"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ91777RV?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Zeal & Ardor",
							"type": "attraction",
							"id": "K8vZ917pODV",
							"test": false,
							"url": "https://www.ticketmaster.com/zeal-ardor-tickets/artist/2442831",
							"locale": "en-us",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/57a/8b8ff326-c8ed-4e00-8a13-91e86fa1d57a_1028721_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/c58/1f9b5eb9-5e7b-4c39-85b0-b573cd593c58_1716241_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAk",
										"name": "Blues Gospel"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAdn",
										"name": "Artist"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 26,
								"mfx-de": 7,
								"ticketweb": 7,
								"mfx-dk": 1,
								"mfx-nl": 1,
								"ticketmaster": 10,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917pODV?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Shawn James",
				"type": "event",
				"id": "G5dFZ9k5fW35v",
				"test": false,
				"url": "https://www.ticketweb.uk/event/shawn-james-the-garage-tickets/11868755?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-03-07T17:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-11-16T16:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-11-16",
						"localTime": "19:00:00",
						"dateTime": "2022-11-16T19:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6UL39",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9k5fW35v?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9179Haf?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177Akf?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Garage",
							"type": "venue",
							"id": "KovZ9177Akf",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-garage-tickets-london/venue/254158",
							"locale": "en-de",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dbimages/2295v.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								}
							],
							"postalCode": "N5 1RD",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "20-22 Highbury Corner"
							},
							"location": {
								"longitude": "-0.103855",
								"latitude": "51.546708"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 57,
								"ticketmaster": 57,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "Please email boxoffice@thegarage.co.uk or phone 020 7619 6727 for specific requests, enquiries or comments regarding access/personal needs and a member of the team will endeavor to accommodate such requirements.",
								"adaCustomCopy": "The  Relentless Garage takes the needs of disabled customers very seriously and actively encourages people of all abilities to attend the events scheduled at their venue. Though built in Victorian times, the building has been modernized to allow wheelchair access via front of house to the Ground floor level (please note there is no direct backstage disabled access). Due to licensing and Health and Safety Assessments, we regret the number of wheelchairs that we can admit to the building is limited. In order to ensure that all disabled patrons to the Garage are adequately catered for, we request that prior to booking all disabled customers contact the venue (boxoffice@thegarage.co.uk, 020 7619 6727) in advance of ticket purchase to explain the nature of their disability.  On the evening of an event, we do advise disabled customers to arrive at the venue 15 minutes prior to doors, ideally accompanied by a companion over 18 years old who will be admitted free of charge.The free companion ticket is available to patrons who are registered disabled. Both the ticket to be paid for and the free companion ticket needs to be booked in advance.",
								"adaHours": "not applicable"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177Akf?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Shawn James",
							"type": "attraction",
							"id": "K8vZ9179Haf",
							"test": false,
							"url": "https://www.ticketmaster.com/shawn-james-tickets/artist/2449127",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/channel/UCfUgkEJoNhPAnJ7uyGMdpbg"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/ShawnJamesMusic"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/shawn-james/540917346"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/ShawnJamesSoul"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/user/126073859"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/shawnjamesmusic/"
									}
								],
								"homepage": [
									{
										"url": "https://www.shawnjamesmusic.com/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/5b3/a6d8a425-f243-4b53-80fd-41ddb856f5b3_1429941_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7la",
										"name": "Individual"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vAd7",
										"name": "Musician"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 29,
								"tmr": 10,
								"ticketweb": 6,
								"ticketmaster": 13,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9179Haf?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Andy McKee",
				"type": "event",
				"id": "G5dFZ96538P7G",
				"test": false,
				"url": "https://www.ticketweb.uk/event/andy-mckee-bush-hall-tickets/11923915?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": false
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": false
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": false
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": false
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-03-23T10:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2022-12-11T16:30:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-12-11",
						"localTime": "19:30:00",
						"dateTime": "2022-12-11T19:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6VKLB",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ96538P7G?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917G-sf?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZpZAn1AAA?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Bush Hall",
							"type": "venue",
							"id": "KovZpZAn1AAA",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/bush-hall-tickets-london/venue/255869",
							"locale": "en-de",
							"images": [
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/v/f35/cae34ee1-b178-4ff7-a03f-92c3971c2f35_320622_SOURCE.jpg",
									"width": 3648,
									"height": 2736,
									"fallback": false,
									"attribution": "CC BY-SA 2.0 via wikipedia"
								}
							],
							"postalCode": "W12 7LJ",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "310 Uxbridge Road"
							},
							"location": {
								"longitude": "-0.231579",
								"latitude": "51.506574"
							},
							"markets": [
								{
									"name": "All of United Kingdom",
									"id": "201"
								},
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 601
								},
								{
									"id": 602
								}
							],
							"boxOfficeInfo": {
								"phoneNumberDetail": "020 8222 6955 - Venue booking line.",
								"openHoursDetail": "There is no Box Office at Bush Hall for personal callers. However, the is a phone room which is open from 10.00am - 6.00pm (Monday - Friday)",
								"acceptedPaymentDetail": "Bush Hall accepts all major credit cards, subject to a 1.50 booking charge per transaction.",
								"willCallDetail": "Cobos can be collected on the evening of the event. Please take your credit card and Ticketmaster reference number with you."
							},
							"parkingDetail": "Parking in the area is extremely difficult, it is advised to use Public Transport.",
							"accessibleSeatingDetail": "Please contact the venue for further information on 020 8222 6955",
							"generalInfo": {
								"generalRule": "No Cameras or Video Cameras. No Audio Recording Devices. Drinks can be taken into the Hall from the Bar. Bush Hall operates on a Membership Basis and Performance Membership is included in the price of a concert ticket.",
								"childRule": "Minimum age dependant on event."
							},
							"upcomingEvents": {
								"_total": 12,
								"ticketmaster": 12,
								"_filtered": 0
							},
							"ada": {
								"adaPhones": "020 8222 6955 - Venue booking line.",
								"adaCustomCopy": "To better accommodate your needs, Bush Hall has requested that all special seating accommodations be solicited only through their representatives. Please contact a Bush Hall representative for further help with your ticket purchase.*   Advance ticket purchase may be required.* Box office information is subject to change.",
								"adaHours": "There is no Box Office at Bush Hall for personal callers. However, the is a phone room which is open from 10.00am - 6.00pm (Monday - Friday)"
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZpZAn1AAA?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Andy McKee",
							"type": "attraction",
							"id": "K8vZ917G-sf",
							"test": false,
							"url": "https://www.ticketmaster.com/andy-mckee-tickets/artist/770578",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/user/andymckee"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/TheRealMcKee"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/andy-mckee/190267921"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/andymckeemusic"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/59T0qdTmDGZ1g0slfSbPfy"
									}
								],
								"musicbrainz": [
									{
										"id": "ace6f877-f619-4c6d-b32e-f7b8ba8b2043"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/therealmckee"
									}
								],
								"homepage": [
									{
										"url": "http://www.andymckee.info/"
									}
								]
							},
							"images": [
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": false
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/a/aaa/2cd41c15-695e-48da-949f-15bb2097eaaa_373221_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": false
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 9,
								"tmr": 2,
								"ticketmaster": 7,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917G-sf?locale=en-us"
								}
							}
						}
					]
				}
			},
			{
				"name": "Tim Penn and the Second Line",
				"type": "event",
				"id": "G5dFZ9C5DOSD9",
				"test": false,
				"url": "https://www.ticketweb.uk/event/tim-penn-and-the-second-green-note-tickets/12272895?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-07-02T09:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2023-01-07T18:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2023-01-07",
						"localTime": "20:30:00",
						"dateTime": "2023-01-07T20:30:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW71I7B",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9C5DOSD9?locale=en-us"
					},
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Green Note",
							"type": "venue",
							"id": "KovZ9177CZV",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/green-note-tickets-london/venue/410166",
							"locale": "en-de",
							"postalCode": "NW1 7AN",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "106 Parkway"
							},
							"location": {
								"longitude": "-0.14575869",
								"latitude": "51.53738687"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 149,
								"ticketmaster": 149,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177CZV?locale=en-de"
								}
							}
						}
					]
				}
			},
			{
				"name": "Catfish",
				"type": "event",
				"id": "G5dFZ9GUGT0lL",
				"test": false,
				"url": "https://www.ticketweb.uk/event/catfish-the-sound-lounge-sutton-tickets/12216455?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-06-13T08:45:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2023-02-18T20:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2023-02-18",
						"localTime": "20:00:00",
						"dateTime": "2023-02-18T20:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "onsale"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAvd",
							"name": "Blues"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7vAAd",
							"name": "Blues"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW70ISB",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ9GUGT0lL?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ917pq4V?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177b30?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "The Sound Lounge (Sutton)",
							"type": "venue",
							"id": "KovZ9177b30",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/the-sound-lounge-sutton-tickets-sutton/venue/414155",
							"locale": "en-de",
							"postalCode": "SM1 1NU ",
							"timezone": "Europe/London",
							"city": {
								"name": "Sutton"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "216-220 High Street"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 28,
								"ticketmaster": 28,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177b30?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Catfish",
							"type": "attraction",
							"id": "K8vZ917pq4V",
							"test": false,
							"url": "https://www.ticketmaster.com/catfish-tickets/artist/2433369",
							"locale": "en-us",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/7be/4e1e9428-29ec-401f-aa45-f1577614b7be_105421_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAvd",
										"name": "Blues"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vAAd",
										"name": "Blues"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7l1",
										"name": "Group"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vA71",
										"name": "Band"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 4,
								"ticketmaster": 4,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917pq4V?locale=en-us"
								}
							}
						}
					]
				}
			}
		]
	},
	"_links": {
		"self": {
			"href": "/discovery/v2/events?genreId=KnvZfZ7vAvd&size=100&dmaId=602&includeTBA=no&sort=date%2Casc&includeTBD=no"
		}
	},
	"page": {
		"size": 100,
		"totalElements": 44,
		"totalPages": 1,
		"number": 0
	}
}
        ''',
      ),
    ),
  ],
);

final fetchEventsEmptyScenario = Scenario(
  handlers: [
    MockedRequestHandler(
      path: _fetchEventsEndpoint,
      result: MockedRequestHandler.returnSuccess(data: '''
        {
	"_embedded": {
		"events": []
		}
		}
		'''),
    ),
  ],
);

final fetchEventsOneEventScenario = Scenario(
  handlers: [
    MockedRequestHandler(
      path: _fetchEventsEndpoint,
      result: MockedRequestHandler.returnSuccess(data: '''
        {
	"_embedded": {
		"events": [
			{
				"name": "Mods Mayday",
				"type": "event",
				"id": "G5dFZ975dZstp",
				"test": false,
				"url": "https://www.ticketweb.uk/event/mods-mayday-round-chapel-tickets/11770435?REFERRAL_ID=tmfeed",
				"locale": "en-us",
				"images": [
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_EVENT_DETAIL_PAGE_16_9.jpg",
						"width": 205,
						"height": 115,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_LARGE_16_9.jpg",
						"width": 2048,
						"height": 1152,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_LANDSCAPE_16_9.jpg",
						"width": 1136,
						"height": 639,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RECOMENDATION_16_9.jpg",
						"width": 100,
						"height": 56,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_ARTIST_PAGE_3_2.jpg",
						"width": 305,
						"height": 203,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_16_9.jpg",
						"width": 640,
						"height": 360,
						"fallback": true
					},
					{
						"ratio": "4_3",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_CUSTOM.jpg",
						"width": 305,
						"height": 225,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_3_2.jpg",
						"width": 1024,
						"height": 683,
						"fallback": true
					},
					{
						"ratio": "16_9",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_16_9.jpg",
						"width": 1024,
						"height": 576,
						"fallback": true
					},
					{
						"ratio": "3_2",
						"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_3_2.jpg",
						"width": 640,
						"height": 427,
						"fallback": true
					}
				],
				"sales": {
					"public": {
						"startDateTime": "2022-02-02T14:00:00Z",
						"startTBD": false,
						"startTBA": false,
						"endDateTime": "2030-05-01T23:00:00Z"
					}
				},
				"dates": {
					"start": {
						"localDate": "2022-05-02",
						"localTime": "15:00:00",
						"dateTime": "2022-05-02T14:00:00Z",
						"dateTBD": false,
						"dateTBA": false,
						"timeTBA": false,
						"noSpecificTime": false
					},
					"timezone": "Europe/London",
					"status": {
						"code": "cancelled"
					},
					"spanMultipleDays": false
				},
				"classifications": [
					{
						"primary": true,
						"segment": {
							"id": "KZFzniwnSyZfZ7v7nJ",
							"name": "Music"
						},
						"genre": {
							"id": "KnvZfZ7vAeA",
							"name": "Rock"
						},
						"subGenre": {
							"id": "KZazBEonSMnZfZ7v6F1",
							"name": "Pop"
						},
						"type": {
							"id": "KZAyXgnZfZ7v7nI",
							"name": "Undefined"
						},
						"subType": {
							"id": "KZFzBErXgnZfZ7v7lJ",
							"name": "Undefined"
						},
						"family": false
					}
				],
				"accessibility": {},
				"ageRestrictions": {
					"legalAgeEnforced": false
				},
				"code": "TW1:ETW6STTH",
				"_links": {
					"self": {
						"href": "/discovery/v2/events/G5dFZ975dZstp?locale=en-us"
					},
					"attractions": [
						{
							"href": "/discovery/v2/attractions/K8vZ9174iLf?locale=en-us"
						},
						{
							"href": "/discovery/v2/attractions/K8vZ9172zmV?locale=en-us"
						},
						{
							"href": "/discovery/v2/attractions/K8vZ917oo9V?locale=en-us"
						},
						{
							"href": "/discovery/v2/attractions/K8vZ9179FS0?locale=en-us"
						}
					],
					"venues": [
						{
							"href": "/discovery/v2/venues/KovZ9177px0?locale=en-de"
						}
					]
				},
				"_embedded": {
					"venues": [
						{
							"name": "Round Chapel",
							"type": "venue",
							"id": "KovZ9177px0",
							"test": false,
							"url": "https://www.ticketmaster.co.uk/round-chapel-tickets-london/venue/413474",
							"locale": "en-de",
							"postalCode": "E5 0LY",
							"timezone": "Europe/London",
							"city": {
								"name": "London"
							},
							"country": {
								"name": "Great Britain",
								"countryCode": "GB"
							},
							"address": {
								"line1": "1D Glenarm Road"
							},
							"location": {
								"longitude": "-0.04993",
								"latitude": "51.552749"
							},
							"markets": [
								{
									"name": "London",
									"id": "202"
								}
							],
							"dmas": [
								{
									"id": 602
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/venues/KovZ9177px0?locale=en-de"
								}
							}
						}
					],
					"attractions": [
						{
							"name": "Mods Mayday",
							"type": "attraction",
							"id": "K8vZ9174iLf",
							"test": false,
							"url": "https://www.ticketmaster.com/mods-mayday-tickets/artist/2320027",
							"locale": "en-us",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAeA",
										"name": "Rock"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7v66t",
										"name": "Mod"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7lt",
										"name": "Event Style"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vA6E",
										"name": "Festival"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 1,
								"ticketmaster": 1,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9174iLf?locale=en-us"
								}
							}
						},
						{
							"name": "Secret Affair",
							"type": "attraction",
							"id": "K8vZ9172zmV",
							"test": false,
							"url": "https://www.ticketmaster.com/secret-affair-tickets/artist/1740289",
							"locale": "en-us",
							"externalLinks": {
								"youtube": [
									{
										"url": "https://www.youtube.com/channel/UC8ttdWdI15bcrMCAR3ySpLw"
									}
								],
								"twitter": [
									{
										"url": "https://twitter.com/SecretAffair79"
									}
								],
								"itunes": [
									{
										"url": "https://music.apple.com/us/artist/secret-affair/258673794"
									}
								],
								"wiki": [
									{
										"url": "https://en.wikipedia.org/wiki/Secret_Affair"
									}
								],
								"facebook": [
									{
										"url": "https://www.facebook.com/secretaffair.official"
									}
								],
								"spotify": [
									{
										"url": "https://open.spotify.com/artist/0QAboP7IkjMVbdk6htAvCL?autoplay=true"
									}
								],
								"musicbrainz": [
									{
										"id": "d5117a22-1cf3-46c8-8b6e-5417a04e8c8a"
									}
								],
								"instagram": [
									{
										"url": "https://www.instagram.com/secretaffairofficial/"
									}
								],
								"homepage": [
									{
										"url": "http://www.secretaffair.info/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAeA",
										"name": "Rock"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7v6F1",
										"name": "Pop"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9172zmV?locale=en-us"
								}
							}
						},
						{
							"name": "Squire",
							"type": "attraction",
							"id": "K8vZ917oo9V",
							"test": false,
							"url": "https://www.ticketmaster.com/squire-tickets/artist/1872423",
							"locale": "en-us",
							"externalLinks": {
								"musicbrainz": [
									{
										"id": "d285ee00-affb-4afc-b02f-740745b508b6"
									}
								],
								"homepage": [
									{
										"url": "http://squirenet.co.uk/"
									}
								]
							},
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_EVENT_DETAIL_PAGE_16_9.jpg",
									"width": 205,
									"height": 115,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_CUSTOM.jpg",
									"width": 305,
									"height": 225,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/fbc/b293c0ad-c904-4215-bc59-8d7f2414dfbc_106141_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAeA",
										"name": "Rock"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7v6dt",
										"name": "Alternative Rock"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7nI",
										"name": "Undefined"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7v7lJ",
										"name": "Undefined"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 2,
								"ticketmaster": 2,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ917oo9V?locale=en-us"
								}
							}
						},
						{
							"name": "The Vapors",
							"type": "attraction",
							"id": "K8vZ9179FS0",
							"test": false,
							"url": "https://www.ticketmaster.com/the-vapors-tickets/artist/2509077",
							"locale": "en-us",
							"images": [
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_TABLET_LANDSCAPE_16_9.jpg",
									"width": 1024,
									"height": 576,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_RETINA_LANDSCAPE_16_9.jpg",
									"width": 1136,
									"height": 639,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_RECOMENDATION_16_9.jpg",
									"width": 100,
									"height": 56,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/uk/dbimages/61389a.jpg",
									"width": 205,
									"height": 115,
									"fallback": false
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_ARTIST_PAGE_3_2.jpg",
									"width": 305,
									"height": 203,
									"fallback": true
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_TABLET_LANDSCAPE_LARGE_16_9.jpg",
									"width": 2048,
									"height": 1152,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_TABLET_LANDSCAPE_3_2.jpg",
									"width": 1024,
									"height": 683,
									"fallback": true
								},
								{
									"ratio": "3_2",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_RETINA_PORTRAIT_3_2.jpg",
									"width": 640,
									"height": 427,
									"fallback": true
								},
								{
									"ratio": "4_3",
									"url": "https://s1.ticketm.net/uk/dbimages/61388a.jpg",
									"width": 305,
									"height": 225,
									"fallback": false
								},
								{
									"ratio": "16_9",
									"url": "https://s1.ticketm.net/dam/c/4f2/0109888a-61b5-4525-8432-b026ef04f4f2_105631_RETINA_PORTRAIT_16_9.jpg",
									"width": 640,
									"height": 360,
									"fallback": true
								}
							],
							"classifications": [
								{
									"primary": true,
									"segment": {
										"id": "KZFzniwnSyZfZ7v7nJ",
										"name": "Music"
									},
									"genre": {
										"id": "KnvZfZ7vAev",
										"name": "Pop"
									},
									"subGenre": {
										"id": "KZazBEonSMnZfZ7vkEI",
										"name": "New Wave"
									},
									"type": {
										"id": "KZAyXgnZfZ7v7l1",
										"name": "Group"
									},
									"subType": {
										"id": "KZFzBErXgnZfZ7vA71",
										"name": "Band"
									},
									"family": false
								}
							],
							"upcomingEvents": {
								"_total": 4,
								"ticketmaster": 4,
								"_filtered": 0
							},
							"_links": {
								"self": {
									"href": "/discovery/v2/attractions/K8vZ9179FS0?locale=en-us"
								}
							}
						}
					]
				}
			}
		]
		}
		}
		'''),
    ),
  ],
);
