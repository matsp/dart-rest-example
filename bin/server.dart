import 'package:dart_rest_example/user_service.dart';
import 'package:shelf/shelf.dart' show Request, Response;
import 'package:shelf/shelf_io.dart' as io;

const _hostname = 'localhost';

void main(List<String> args) async { 
  final userService = UserService();

  await io.serve(userService.router.handler, _hostname, 8080);
}

