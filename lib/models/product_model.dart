class Data {
  String? id;
  String? slug;
  String? name;
  int? price;
  int? strikePrice;
  int? minOrder;
  int? maxOrder;
  bool? variantStatus;
  String? category;
  String? categoryName;
  String? categorySlug;
  bool? status;
  List<Variants>? variants;
  String? stock;
  String? initialStock;
  String? description;
  List<Specification>? specification;
  List<VariantDetails>? variantDetails;
  List<Image>? image;
  VendorDetail? vendorDetail;
  int? viewCount;
  bool? isFavourite;
  bool? commissionStatus;
  String? commissionType;
  String? commissionAmount;
  int? averageRating;
  bool? isApproved;
  bool? isFeatured;
  bool? isPublished;
  String? unapprovedMessage;

  Data({
    this.id,
    this.slug,
    this.name,
    this.price,
    this.strikePrice,
    this.minOrder,
    this.maxOrder,
    this.variantStatus,
    this.category,
    this.categoryName,
    this.categorySlug,
    this.status,
    this.variants,
    this.stock,
    this.initialStock,
    this.description,
    this.specification,
    this.variantDetails,
    this.image,
    this.vendorDetail,
    this.viewCount,
    this.isFavourite,
    this.commissionStatus,
    this.commissionType,
    this.commissionAmount,
    this.averageRating,
    this.isApproved,
    this.isFeatured,
    this.isPublished,
    this.unapprovedMessage,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      slug: json['slug'],
      name: json['name'],
      price: json['price'],
      strikePrice: json['strike_price'],
      minOrder: json['min_order'],
      maxOrder: json['max_order'],
      variantStatus: json['variant_status'],
      category: json['category'],
      categoryName: json['category_name'],
      categorySlug: json['category_slug'],
      status: json['status'],
      variants: json['variants'] != null
          ? (json['variants'] as List).map((v) => Variants.fromJson(v)).toList()
          : null,
      stock: json['stock'],
      initialStock: json['initial_stock'],
      description: json['description'],
      specification: json['specification'] != null
          ? (json['specification'] as List)
              .map((v) => Specification.fromJson(v))
              .toList()
          : null,
      variantDetails: json['variant_details'] != null
          ? (json['variant_details'] as List)
              .map((v) => VariantDetails.fromJson(v))
              .toList()
          : null,
      image: json['image'] != null
          ? (json['image'] as List).map((v) => Image.fromJson(v)).toList()
          : null,
      vendorDetail: json['vendor_detail'] != null
          ? VendorDetail.fromJson(json['vendor_detail'])
          : null,
      viewCount: json['view_count'],
      isFavourite: json['is_favourite'],
      commissionStatus: json['commission_status'],
      commissionType: json['commission_type'],
      commissionAmount: json['commission_amount'],
      averageRating: json['average_rating'],
      isApproved: json['is_approved'],
      isFeatured: json['is_featured'],
      isPublished: json['is_published'],
      unapprovedMessage: json['unapproved_message'],
    );
  }
}

class Variants {
  Type? type;
  List<Values>? values;

  Variants({this.type, this.values});

  factory Variants.fromJson(Map<String, dynamic> json) {
    return Variants(
      type: json['type'] != null ? Type.fromJson(json['type']) : null,
      values: json['values'] != null
          ? List<Values>.from(json['values'].map((v) => Values.fromJson(v)))
          : null,
    );
  }
}

class Type {
  String? id;
  String? name;

  Type({this.id, this.name});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Values {
  String? id;
  String? value;

  Values({this.id, this.value});

  Values.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['value'] = value;
    return data;
  }
}

class Specification {
  String? type;
  String? value;

  Specification({this.type, this.value});

  Specification.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['value'] = value;
    return data;
  }
}

class VariantDetails {
  String? id;
  int? price;
  int? strikePrice;
  int? minOrder;
  int? maxOrder;
  bool? status;
  int? stock;
  int? initialStock;
  List<Variants>? variants;
  List<Image>? image;

  VariantDetails(
      {this.id,
      this.price,
      this.strikePrice,
      this.minOrder,
      this.maxOrder,
      this.status,
      this.stock,
      this.initialStock,
      this.variants,
      this.image});

  VariantDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    strikePrice = json['strike_price'];
    minOrder = json['min_order'];
    maxOrder = json['max_order'];
    status = json['status'];
    stock = json['stock'];
    initialStock = json['initial_stock'];
    if (json['variants'] != null) {
      variants = <Variants>[];
      json['variants'].forEach((v) {
        variants!.add(Variants.fromJson(v));
      });
    }
    if (json['image'] != null) {
      image = <Image>[];
      json['image'].forEach((v) {
        image!.add(Image.fromJson(v));
      });
    }
  }
}

class TypeData {
  String? name;

  TypeData({this.name});

  TypeData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Image {
  String? id;
  String? title;
  String? path;

  Image({this.id, this.title, this.path});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    path = json['path'];
  }
}

class VendorDetail {
  String? id;
  String? user;
  String? slug;
  String? isAdmin;
  String? isVendor;
  String? companyName;
  String? companyAddress;
  String? companyPhone;
  int? vatRegisterNo;
  String? businessEmail;
  String? companyRegistrationDate;
  String? category;
  String? subCategory;
  String? description;
  String? otherDocument;

  VendorDetail(
      {this.id,
      this.user,
      this.slug,
      this.isAdmin,
      this.isVendor,
      this.companyName,
      this.companyAddress,
      this.companyPhone,
      this.vatRegisterNo,
      this.businessEmail,
      this.companyRegistrationDate,
      this.category,
      this.subCategory,
      this.description,
      this.otherDocument});

  VendorDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    slug = json['slug'];
    isAdmin = json['is_admin'];
    isVendor = json['is_vendor'];
    companyName = json['company_name'];
    companyAddress = json['company_address'];
    companyPhone = json['company_phone'];
    vatRegisterNo = json['vat_register_no'];
    businessEmail = json['business_email'];
    companyRegistrationDate = json['company_registration_date'];
    category = json['category'];
    subCategory = json['sub_category'];
    description = json['description'];
    otherDocument = json['other_document'];
  }
}

class ProductDetailsModel {
  Data? data;

  ProductDetailsModel({this.data});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}
