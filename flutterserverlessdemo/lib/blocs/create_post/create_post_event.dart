part of 'create_post_bloc.dart';

@immutable
abstract class CreatePostEvent {}

class CreatePostSubmitted extends CreatePostEvent {
  final PickedFile pickedFile;
  final String description;

  CreatePostSubmitted(this.pickedFile, this.description);

  @override
  String toString() =>
      'CreatePostSubmitted{pickedFile: $pickedFile, description: $description}';
}
