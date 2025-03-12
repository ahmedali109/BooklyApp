part of 'newest_news_cubit.dart';

sealed class NewsetNewsState extends Equatable {
  const NewsetNewsState();

  @override
  List<Object> get props => [];
}

class NewsetNewsInitial extends NewsetNewsState {}

class NewsetNewsLoading extends NewsetNewsState {}

class NewsetNewsSuccess extends NewsetNewsState {
  final List<BookModel> books;
  const NewsetNewsSuccess(this.books);
}

class NewsetNewsFailure extends NewsetNewsState {
  final String message;
  const NewsetNewsFailure(this.message);
}
