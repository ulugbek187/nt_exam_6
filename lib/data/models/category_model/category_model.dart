
import 'package:nt_exam_6/data/models/detail_category_model/detail_category_model.dart';

class CategoryModel {
  final String title;
  final String image;
  final DetailCategoryModel subCategoryModel;

  CategoryModel({
    required this.subCategoryModel,
    required this.image,
    required this.title,
  });
}
