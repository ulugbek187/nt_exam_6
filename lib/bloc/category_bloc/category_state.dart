part of 'category_bloc.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryInitial extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategorySuccessState extends CategoryState {
  final List<CategoryModel> categories;

  const CategorySuccessState(
    this.categories,
  );

  @override
  List<Object?> get props => [
        categories,
      ];
}
