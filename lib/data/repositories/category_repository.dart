import 'package:nt_exam_6/data/models/category_model/category_model.dart';
import 'package:nt_exam_6/data/models/sub_category_model/sub_category_model.dart';
import 'package:nt_exam_6/data/response/network_response.dart';
import 'package:nt_exam_6/utils/image/appimage.dart';

class CategoryRepository {
  Future<NetworkResponse> getCategories() async {
    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
    );

    return NetworkResponse(
      data: categories,
    );
  }
}

List<CategoryModel> categories = [
  CategoryModel(
    subCategoryModel: SubCategoryModel(
      childDescriptions: [
        'PET',
        'HDPE',
        'PVC',
        'LDPE',
        'PP',
        'PS',
        'OTHER',
      ],
      images: [
        AppImages.plastic,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
      ],
      parentCategoryName: 'PLASTIC',
      parentDescriptions: [
        "Plastic bottles and containers coded #1-#7 Six or twelve pack rings",
        "POLYETHYLENE TEREPHTHALATE COMMON ITEMS:",
        "HIGH-DENSITY POLYETHYLENE COMMON ITEMS:",
        "POLYVINYL CHLORIDE COMMON ITEMS:",
        "LOW-DENSITY POLYETHYLENE COMMON ITEMS:",
        "POLYETHYLENE COMMON ITEMS:",
        "OTHER PLASTICS COMMON ITEMS:",
      ],
      titleOfCategory: [
        "Plastic bags and film electronic items insecticide and hazardous chemical containers",
        "Cosmetic Containers Plastic Bottles Mouthwash Bottles Prepared Food Trays",
        "Detergent Bottles Grocery Bags Milk Bottles Shampoo Bottles",
        "Garden Hose Window Frames Blood Bags Blister Packs",
        "6 Packs Rings Cling Film Bread Bags Squeezble Bottles",
        "Yogurt Containers Medicine Bottles Caps Straws",
        "Disposable PLates/Cups Egg Cartons Meat Trays Take-out Containers",
        "Sunglasses Nylon Bulletproof Materials 3 & 5 gallon water bottles",
      ],
    ),
    images: AppImages.plastic,
    title: 'PLASTIC',
  ),
];
