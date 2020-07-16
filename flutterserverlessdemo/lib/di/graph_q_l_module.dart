import 'package:firebase_auth/firebase_auth.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class GraphQLModule {
  HttpLink provideHttpLink() =>
      HttpLink(uri: 'https://flutter-serverless-demo.herokuapp.com/v1/graphql');

  WebSocketLink provideWebSocketLink() => WebSocketLink(
        url: 'wss://flutter-serverless-demo.herokuapp.com/v1/graphql',
        config: SocketClientConfig(
            autoReconnect: true,
            inactivityTimeout: Duration(seconds: 30),
            initPayload: () async {
              final user = await FirebaseAuth.instance.currentUser();
              if (user != null) {
                final idToken = await user.getIdToken();
                final token = idToken?.token;
                if (token != null) {
                  return {
                    "headers": {"Authorization": 'Bearer $token'}
                  };
                }
              }
              return null;
            }),
      );

  AuthLink provideAuthLink() => AuthLink(
        getToken: () async {
          final user = await FirebaseAuth.instance.currentUser();
          if (user != null) {
            final idToken = await user.getIdToken();
            final token = idToken?.token;
            if (token != null) {
              return 'Bearer $token';
            }
          }
          return null;
        },
      );

  GraphQLClient provideGraphQLClient(
    HttpLink httpLink,
    WebSocketLink webSocketLink,
    AuthLink authLink,
  ) =>
      GraphQLClient(
        cache: InMemoryCache(),
        link: authLink.concat(httpLink).concat(webSocketLink),
      );
}
