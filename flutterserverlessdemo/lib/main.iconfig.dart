// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart';
import 'package:flutterserverlessdemo/di/graph_q_l_module.dart';
import 'package:flutterserverlessdemo/di/network_module.dart';
import 'package:flutterserverlessdemo/repositories/comment_repository.dart';
import 'package:flutterserverlessdemo/repositories/post_repository.dart';
import 'package:flutterserverlessdemo/repositories/services/firebase_service.dart';
import 'package:flutterserverlessdemo/repositories/services/json_serializable_converter.dart';
import 'package:flutterserverlessdemo/repositories/session_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

void $initGetIt(GetIt g, {String environment}) {
  final graphQLModule = _$GraphQLModule();
  final networkModule = _$NetworkModule();
  g.registerFactory<AuthLink>(() => graphQLModule.provideAuthLink());
  g.registerFactory<FirebaseService>(
      () => networkModule.provideFirebaseService());
  g.registerFactory<HttpLink>(() => graphQLModule.provideHttpLink());
  g.registerFactory<JsonSerializableConverter>(
      () => networkModule.provideConverter());
  g.registerFactory<WebSocketLink>(() => graphQLModule.provideWebSocketLink());
  g.registerFactory<ChopperClient>(() => networkModule.provideServices(
      g<JsonSerializableConverter>(), g<FirebaseService>()));
  g.registerFactory<GraphQLClient>(() => graphQLModule.provideGraphQLClient(
        g<HttpLink>(),
        g<WebSocketLink>(),
        g<AuthLink>(),
      ));

  //Eager singletons must be registered in the right order
  g.registerSingleton<SessionRepository>(SessionRepository());
  g.registerSingleton<PostRepository>(
      PostRepository(g<FirebaseService>(), g<GraphQLClient>()));
  g.registerSingleton<CommentRepository>(CommentRepository(g<GraphQLClient>()));
}

class _$GraphQLModule extends GraphQLModule {}

class _$NetworkModule extends NetworkModule {}
