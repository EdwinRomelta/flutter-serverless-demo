// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterserverlessdemo/screens/comments_page.dart';
import 'package:flutterserverlessdemo/screens/home_page.dart';
import 'package:flutterserverlessdemo/screens/login_page.dart';
import 'package:flutterserverlessdemo/screens/post_create_page.dart';
import 'package:flutterserverlessdemo/screens/post_submit_page.dart';
import 'package:flutterserverlessdemo/screens/register_page.dart';
import 'package:flutterserverlessdemo/screens/splash_page.dart';
import 'package:image_picker/image_picker.dart';

class Routes {
  static const String splashPage = '/';
  static const String loginPage = '/login';
  static const String registerPage = '/register';
  static const String homePage = '/home';
  static const String postCreatePage = '/post/create';
  static const String postSubmitPage = '/post/submit';
  static const String _commentsPage = '/post/:postId/comments';

  static commentsPage({@required postId}) => '/post/$postId/comments';
  static const all = <String>{
    splashPage,
    loginPage,
    registerPage,
    homePage,
    postCreatePage,
    postSubmitPage,
    _commentsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.registerPage, page: RegisterPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.postCreatePage, page: PostCreatePage),
    RouteDef(Routes.postSubmitPage, page: PostSubmitPage),
    RouteDef(Routes._commentsPage, page: CommentsPage),
  ];

  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LoginPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    RegisterPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RegisterPage(),
        settings: data,
      );
    },
    HomePage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    PostCreatePage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PostCreatePage(),
        settings: data,
      );
    },
    PostSubmitPage: (RouteData data) {
      var args = data.getArgs<PostSubmitPageArguments>(
          orElse: () => PostSubmitPageArguments());
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PostSubmitPage(
            imageFile: args.imageFile, videoFile: args.videoFile),
        settings: data,
      );
    },
    CommentsPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            CommentsPage(data.pathParams['postId'].stringValue),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//PostSubmitPage arguments holder class
class PostSubmitPageArguments {
  final PickedFile imageFile;
  final PickedFile videoFile;

  PostSubmitPageArguments({this.imageFile, this.videoFile});
}
