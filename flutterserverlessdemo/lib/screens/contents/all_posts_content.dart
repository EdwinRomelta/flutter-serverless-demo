import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/my_post/my_post_bloc.dart';
import 'package:flutterserverlessdemo/component/route.gr.dart';
import 'package:flutterserverlessdemo/main.dart';

class AllPostsContent extends StatefulWidget {
  @override
  _AllPostsContentState createState() => _AllPostsContentState();
}

class _AllPostsContentState extends State<AllPostsContent> {
  final _myPostBloc = MyPostBloc(injector.get());

  @override
  void initState() {
    super.initState();
    _myPostBloc.add(MyPostRefresh());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyPostBloc, MyPostState>(
      bloc: _myPostBloc,
      builder: (context, state) {
        if (state is MyPostSuccess) {
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              final post = state.posts[index];
              return Card(
                child: ListTile(
                  onTap: () => ExtendedNavigator.of(context)
                      .pushReplacementNamed(
                          Routes.commentsPage(postId: post.id)),
                  title: post.imageUrl != null
                      ? Image.network(post.imageUrl)
                      : null,
                  subtitle: Text(post.description),
                ),
              );
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  @override
  void dispose() {
    _myPostBloc.close();
    super.dispose();
  }
}
