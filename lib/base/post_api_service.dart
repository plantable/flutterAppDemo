// import 'package:chopper/chopper.dart';
// import 'package:flutter/material.dart';

// part 'post_api_service.chopper.dart';

// @ChopperApi(baseUrl: '')
// abstract class PostApiService extends ChopperService {

// static PostApiService create() {
//     final client = ChopperClient(
//       // The first part of the URL is now here
//       baseUrl: 'https://parcopy-euphebe.cs65.force.com/services/apexrest',
//       services: [
//         // The generated implementation
//         _$PostApiService(),
//       ],
//       // Converts data to & from JSON and adds the application/json header.
//       converter: JsonConverter(),
//     );

//     // The generated class with the ChopperClient passed in
//     return _$PostApiService(client);
//   }

//   // Put & Patch requests are specified the same way - they must contain the @Body
//   @Post(
//     path: '/user',
//     headers: {'AuthorizationToken':'ouN1ldovRQjJ3ParhvUKP#JgF%yOhsfoUrQljNMMjf5zNBM4yRgyfzs%cz^DlkR%DB'}
//   )
//   Future<Response> login(
//     @Body() Map<String, dynamic> body,
//   );
// }