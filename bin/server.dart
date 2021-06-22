import 'package:dart_rest_example/user_controller.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

const _hostname = 'localhost';

void main(List<String> args) async {
  final userService = UserController();

  final server = await io.serve(userService.router, _hostname, 8080);

  server.autoCompress = true;
}
