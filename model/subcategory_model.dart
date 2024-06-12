class SubCategoryModel {
  List<Category>? mItem1;
  List<SubCatgeory>? mItem2;


  SubCategoryModel({this.mItem1, this.mItem2});

  SubCategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      mItem1 = <Category>[];
      json['m_Item1'].forEach((v) {
        mItem1!.add( Category.fromJson(v));
      });
    }
    if (json['m_Item2'] != null) {
      mItem2 = <SubCatgeory>[];
      json['m_Item2'].forEach((v) {
        mItem2!.add( SubCatgeory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (mItem1 != null) {
      data['m_Item1'] = mItem1!.map((v) => v.toJson()).toList();
    }
    if (mItem2 != null) {
      data['m_Item2'] = mItem2!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Category {
  String? cTGId;
  String? name;
  String? image;
  String? icon;
  String? mOIcon;
  String? isNew;
  String? refId;
  String? mainImage;
  String? order;
  String? cTGRefId;
  String? cTGRefId1;

  Category(
      {this.cTGId,
        this.name,
        this.image,
        this.icon,
        this.mOIcon,
        this.isNew,
        this.refId,
        this.mainImage,
        this.order,
        this.cTGRefId,
        this.cTGRefId1});

  Category.fromJson(Map<String, dynamic> json) {
    cTGId = json['CTGId'];
    name = json['Name'];
    image = json['Image'];
    icon = json['Icon'];
    mOIcon = json['MOIcon'];
    isNew = json['New'];
    refId = json['RefId'];
    mainImage = json['MainImage'];
    order = json['Order'];
    cTGRefId = json['CTGRefId'];
    cTGRefId1 = json['CTGRefId1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CTGId'] = cTGId;
    data['Name'] = name;
    data['Image'] = image;
    data['Icon'] = icon;
    data['MOIcon'] = mOIcon;
    data['New'] = isNew;
    data['RefId'] = refId;
    data['MainImage'] = mainImage;
    data['Order'] = order;
    data['CTGRefId'] = cTGRefId;
    data['CTGRefId1'] = cTGRefId1;
    return data;
  }
}


class SubCatgeory {
  String? cTGId;
  String? name;
  String? image;
  String? icon;
  String? mOIcon;
  String? isNew;
  String? refId;
  String? mainImage;
  String? order;
  String? cTGRefId;
  String? cTGRefId1;

  SubCatgeory(
      {this.cTGId,
      this.name,
      this.image,
      this.icon,
      this.mOIcon,
      this.isNew,
      this.refId,
      this.mainImage,
      this.order,
      this.cTGRefId,
      this.cTGRefId1});

  SubCatgeory.fromJson(Map<String, dynamic> json) {
    cTGId = json['CTGId'];
    name = json['Name'];
    image = json['Image'];
    icon = json['Icon'];
    mOIcon = json['MOIcon'];
    isNew = json['New'];
    refId = json['RefId'];
    mainImage = json['MainImage'];
    order = json['Order'];
    cTGRefId = json['CTGRefId'];
    cTGRefId1 = json['CTGRefId1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CTGId'] = cTGId;
    data['Name'] = name;
    data['Image'] = image;
    data['Icon'] = icon;
    data['MOIcon'] = mOIcon;
    data['New'] = isNew;
    data['RefId'] = refId;
    data['MainImage'] = mainImage;
    data['Order'] = order;
    data['CTGRefId'] = cTGRefId;
    data['CTGRefId1'] = cTGRefId1;
    return data;
  }
}
