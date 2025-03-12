import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_news_state.dart';

class NewsetNewsCubit extends Cubit<NewsetNewsState> {
  NewsetNewsCubit(this.homeRepo) : super(NewsetNewsInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewsetNewsLoading());
    final result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewsetNewsFailure(failure.message)),
      (books) => emit(NewsetNewsSuccess(books)),
    );
  }
}
