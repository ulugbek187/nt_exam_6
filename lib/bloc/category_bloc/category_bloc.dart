import 'package:equatable/equatable.dart';
import 'package:nt_exam_6/data/models/category_model/category_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nt_exam_6/data/repositories/category_repository.dart';
import 'package:nt_exam_6/data/response/network_response.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this.categoryRepository) : super(CategoryInitial()) {
    on<GetCategoriesEvent>((GetCategoriesEvent event, emit) async {
      NetworkResponse networkResponse =
          await categoryRepository.getCategories();

      emit(CategorySuccessState(
        networkResponse.data,
      ));
    });
  }

  final CategoryRepository categoryRepository;
}
