import 'package:firebase_auth/firebase_auth.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink _httpLink = HttpLink(
  uri: 'http://flutter-serverless-demo.herokuapp.com/v1/graphql',
);

final WebSocketLink _websocketLink = WebSocketLink(
  url: 'ws://flutter-serverless-demo.herokuapp.com/v1/graphql',
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

final AuthLink _authLink = AuthLink(
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

final graphQLClient = GraphQLClient(
  cache: InMemoryCache(),
  link: _authLink.concat(_httpLink).concat(_websocketLink),
);
