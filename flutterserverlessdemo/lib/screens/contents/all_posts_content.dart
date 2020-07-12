import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterserverlessdemo/blocs/my_post/my_post_bloc.dart';
import 'package:flutterserverlessdemo/repositories/graph_q_l/graph_q_l_client.dart';
import 'package:flutterserverlessdemo/repositories/post_repository.dart';
import 'package:flutterserverlessdemo/screens/comments_page.dart';

class AllPostsContent extends StatefulWidget {
  @override
  _AllPostsContentState createState() => _AllPostsContentState();
}

class _AllPostsContentState extends State<AllPostsContent> {
  final _myPostBloc = MyPostBloc(PostRepository(graphQLClient));

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
                  onTap: () => Navigator.of(context)
                      .push(CommentsPage.route(post: post)),
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
