import 'package:nt_exam_6/data/models/category_model/category_model.dart';
import 'package:nt_exam_6/data/models/detail_category_model/detail_category_model.dart';
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
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
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
        "*  Plastic bottles and containers coded #1-#7\n*  Six or twelve pack rings",
        "POLYETHYLENE TEREPHTHALATE COMMON ITEMS:",
        "HIGH-DENSITY POLYETHYLENE COMMON ITEMS:",
        "POLYVINYL CHLORIDE COMMON ITEMS:",
        "LOW-DENSITY POLYETHYLENE COMMON ITEMS:",
        "POLYETHYLENE COMMON ITEMS:",
        "OTHER PLASTICS COMMON ITEMS:",
        "OTHER PLASTICS COMMON ITEMS:",
      ],
      titleOfCategory: [
        "* Plastic bags and film\n* electronic items\n* insecticide and hazardous chemical containers",
        "Cosmetic Containers Plastic Bottles Mouthwash Bottles Prepared Food Trays",
        "Detergent Bottles Grocery Bags Milk Bottles Shampoo Bottles",
        "Garden Hose Window Frames Blood Bags Blister Packs",
        "6 Packs Rings Cling Film Bread Bags Squeezble Bottles",
        "Yogurt Containers Medicine Bottles Caps Straws",
        "Disposable PLates/Cups Egg Cartons Meat Trays Take-out Containers",
        "Sunglasses Nylon Bulletproof Materials 3 & 5 gallon water bottles",
      ],
    ),
    image: AppImages.plastic,
    title: 'PLASTIC',
  ),
  CategoryModel(
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
        'FE',
        'ALU',
      ],
      images: [
        AppImages.metal,
        AppImages.bir,
        AppImages.bir,
      ],
      parentCategoryName: 'METAL',
      parentDescriptions: [
        "Aluminum cans and foil Tin and steel cans including empty aerosol cans",
        "STEEL COMMON ITEMS:",
        "ALUMINIUM COMMON ITEMS:",
      ],
      titleOfCategory: [
        "Needles or syringes",
        "FOOD CANS",
        "SOFt drink cans deodorant cans disposable food containers aluminium foil heat sinks",
      ],
    ),
    image: AppImages.metal,
    title: 'METAL',
  ),
  CategoryModel(
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
        'FE',
        'ALU',
      ],
      images: [
        AppImages.paper,
        AppImages.bir,
        AppImages.bir,
      ],
      parentCategoryName: 'PAPER',
      parentDescriptions: [
        "Mixed Paper: advertisements, direct mail, office paper, stationary, emvelopes, paper bags, gift wrap",
        "STEEL COMMON ITEMS:",
        "ALUMINIUM COMMON ITEMS:",
      ],
      titleOfCategory: [
        "Needles or syringes",
        "FOOD CANS",
        "SOFt drink cans deodorant cans disposable food containers aluminium foil heat sinks",
      ],
    ),
    image: AppImages.paper,
    title: 'PAPER',
  ),
  CategoryModel(
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
        'FE',
        'ALU',
        'EF',
      ],
      images: [
        AppImages.glass,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
      ],
      parentCategoryName: 'GLASS',
      parentDescriptions: [
        "Mixed Paper: advertisements, direct mail, office paper, stationary, emvelopes, paper bags, gift wrap",
        "STEEL COMMON ITEMS:",
        "ALUMINIUM COMMON ITEMS:",
        "ALUMINIUM COMMON ITEMS:",
      ],
      titleOfCategory: [
        "Needles or syringes",
        "FOOD CANS",
        "SOFt drink cans deodorant cans disposable food containers aluminium foil heat sinks",
        "SOFt drink cans deodorant cans disposable food containers aluminium foil heat sinks",
      ],
    ),
    image: AppImages.glass,
    title: 'GLASS',
  ),
  CategoryModel(
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
        'FE',
      ],
      images: [
        AppImages.karton,
        AppImages.bir,
      ],
      parentCategoryName: 'Cardboard',
      parentDescriptions: [
        "Mixed Paper: advertisements, direct mail, office paper, stationary, emvelopes, paper bags, gift wrap",
        "STEEL COMMON ITEMS:",
      ],
      titleOfCategory: [
        "Needles or syringes",
        "FOOD CANS",
      ],
    ),
    image: AppImages.karton,
    title: 'Cardboard',
  ),
  CategoryModel(
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
      ],
      images: [
        AppImages.electric,
      ],
      parentCategoryName: 'ELECTRIC',
      parentDescriptions: [
        "Mixed Paper: advertisements, direct mail, office paper, stationary, emvelopes, paper bags, gift wrap",
      ],
      titleOfCategory: [
        "Needles or syringes",
      ],
    ),
    image: AppImages.electric,
    title: 'ELECTRIC',
  ),
  CategoryModel(
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
        'FE',
        'FE',
        'FE',
        'FE',
      ],
      images: [
        AppImages.baterry,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
      ],
      parentCategoryName: 'BATTERY',
      parentDescriptions: [
        "Mixed Paper: advertisements, direct mail, office paper, stationary, emvelopes, paper bags, gift wrap",
        "STEEL COMMON ITEMS:",
        "STEEL COMMON ITEMS:",
        "STEEL COMMON ITEMS:",
        "STEEL COMMON ITEMS:",
      ],
      titleOfCategory: [
        "Needles or syringes",
        "FOOD CANS",
        "FOOD CANS",
        "FOOD CANS",
        "FOOD CANS",
      ],
    ),
    image: AppImages.baterry,
    title: 'BATTERY',
  ),
  CategoryModel(
    subCategoryModel: DetailCategoryModel(
      childDescriptions: [
        '',
        'FE',
        'FE',
        'FE',
        'FE',
      ],
      images: [
        AppImages.organic,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
        AppImages.bir,
      ],
      parentCategoryName: 'ORGANIC',
      parentDescriptions: [
        "Mixed Paper: advertisements, direct mail, office paper, stationary, emvelopes, paper bags, gift wrap",
        "STEEL COMMON ITEMS:",
        "STEEL COMMON ITEMS:",
        "STEEL COMMON ITEMS:",
        "STEEL COMMON ITEMS:",
      ],
      titleOfCategory: [
        "Needles or syringes",
        "FOOD CANS",
        "FOOD CANS",
        "FOOD CANS",
        "FOOD CANS",
      ],
    ),
    image: AppImages.organic,
    title: 'ORGANIC',
  ),
];
