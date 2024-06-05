class SubCategoryModel {
  final String parentCategoryName;
  final List<String> titleOfCategory;
  final List<String> parentDescriptions;
  final List<String> childDescriptions;
  final List<String> images;

  SubCategoryModel({
    required this.childDescriptions,
    required this.images,
    required this.parentCategoryName,
    required this.parentDescriptions,
    required this.titleOfCategory,
  });
}
