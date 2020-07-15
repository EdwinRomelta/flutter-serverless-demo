import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutterserverlessdemo/screens/comments_page.dart';
import 'package:flutterserverlessdemo/screens/home_page.dart';
import 'package:flutterserverlessdemo/screens/login_page.dart';
import 'package:flutterserverlessdemo/screens/post_create_page.dart';
import 'package:flutterserverlessdemo/screens/post_submit_page.dart';
import 'package:flutterserverlessdemo/screens/register_page.dart';
import 'package:flutterserverlessdemo/screens/splash_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(initial: true, page: SplashPage),
    AdaptiveRoute(path: '/login', page: LoginPage),
    AdaptiveRoute(path: '/register', page: RegisterPage),
    AdaptiveRoute(path: '/home', page: HomePage),
    AdaptiveRoute(path: '/post/create', page: PostCreatePage),
    AdaptiveRoute(path: '/post/submit', page: PostSubmitPage),
    AdaptiveRoute(path: '/post/:postId/comments', page: CommentsPage),
  ],
)
class $Router {}
