import 'dart:io';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  // Access the request body form data.
  final formData = await request.formData();

  // Retrieve an uploaded file.
  final photo = formData.files['photo'];

  // || photo.contentType.mimeType != contentTypePng.mineType
  //contentType is not showing it in mine

  if (photo == null) {
    return Response(statusCode: HttpStatus.badRequest);
  }

  return Response.json(
    body: {'message': 'Successfully uploaded ${photo.name}'},
  );
}
