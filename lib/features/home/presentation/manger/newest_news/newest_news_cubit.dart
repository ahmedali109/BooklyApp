import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newest_news_state.dart';

class NewsetNewsCubit extends Cubit<NewsetNewsState> {
  NewsetNewsCubit() : super(NewsetNewsInitial());
}
