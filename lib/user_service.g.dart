// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_service.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$UserServiceRouter(UserService service) {
  final router = Router();
  router.add('GET', r'/users/<userId>', service.getUser);
  return router;
}
