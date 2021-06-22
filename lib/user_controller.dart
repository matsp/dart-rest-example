import 'dart:convert';

import 'package:dart_rest_example/user_dto.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'user_controller.g.dart';

class UserController {
  @Route.get('/users/<userId>')
  Future<Response> getUser(Request request, String userId) async {
    if (userId == '1') {
      return Response.ok(
        jsonEncode(UserDto(
          id: '1',
          name: 'TestUser',
          email: 'test@test.com',
        ).toJson()),
      );
    }

    return Response.notFound('User not found');
  }

  Router get router => _$UserControllerRouter(this);
}
