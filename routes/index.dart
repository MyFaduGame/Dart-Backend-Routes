import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  // Do stuff with the incoming request...
  // Access the HTTP method.
  final method = request.method.value;

  // Access the headers as a `Map<String, String>`.
  final headers = request.headers;

  // Access the query parameters as a `Map<String, String>`.
  final params = request.uri.queryParameters;

  // Get the value for the key `name`.
  // Default to `there` if there is no query parameter.
  final name = params['name'] ?? 'there';

  // Access the request body as a `String`.
  final body = await request.body();

  // Access the request body as parsed `JSON`.
  final body_json = await request.json();

  // return Response.json(body: {'request_body': body_json});

  // Access the request body form data.
  final formData = await request.formData();

  // return Response.json(body: {'form_data': formData.fields});

  // Access the request body form data.
  final formData_photo = await request.formData();

  // Retrieve an uploaded file.
  final photo = formData_photo.files['photo'];

  // if (photo == null || photo.contentType.mimeType != contentTypePng.mimeType) {
  //   return Response(statusCode: HttpStatus.badRequest);
  // }

  // return Response.json(
  //   body: {'message': 'Successfully uploaded ${photo.name}'},
  // );

  //Status Code
  // return Response(statusCode: 204);
  // return Response(body: 'Hello World');

  // Return a response.
  return Response(body: 'This is a $method request.');
  // return Response(body: request.toString());
}
