import 'package:nt_exam_6/data/models/sub_category_model/sub_category_model.dart';

class CategoryModel {
  final String title;
  final String images;
  final SubCategoryModel subCategoryModel;

  CategoryModel({
    required this.subCategoryModel,
    required this.images,
    required this.title,
  });
}
