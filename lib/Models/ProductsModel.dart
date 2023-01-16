/// success : true
/// message : "All Shops Data"
/// data : [{"_id":"61963b4300622d794418687e","on_sale":true,"sale_percent":0,"sold":10,"slider_new":false,"slider_recent":false,"slider_sold":false,"date":"2021-11-18T09:03:04.358Z","title":"Denim Shirt Grey","categories":{"_id":"61963b4300622d794418687f","type":"Woman","date":"2021-08-30T07:29:45.558Z","name":"Clothes","image":"https://cdn.pixabay.com/photo/2016/08/26/20/44/elan-1623087_1280.jpg","__v":0},"subcate":{"_id":"61963b43d0w0622d794418687f","date":"2021-08-30T07:29:45.558Z","name":"Shirts","parentid":"6196377900622d79441864422331b","__v":0},"shop":{"_id":"6196377900622d794418644b","is_active":false,"created_at":"2021-11-18T09:03:04.356Z","name":"ONE","description":"Clothing store in Islamabad","shopemail":"ONE@gmail.com","shopaddress":"islamabad","shopcity":"Islamabad","userid":"6196377800622d7944186447","image":"https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-confident-1714666150","__v":0},"price":"3,490 ","sale_title":"3,490 ","sale_price":"2,443","description":"men shirt","colors":"Red","size":"S,M,X,XL","images":[{"_id":"61963b4300622d794418687f","filename":"images[0]-1637235522052-730096647.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187316","filename":"images[0]-1637235757437-927339951.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187317","filename":"images[1]-1637235758276-122593199.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"}],"__v":1,"in_wishlist":false},{"_id":"61963b4300622d794418687e","on_sale":true,"sale_percent":0,"sold":10,"slider_new":false,"slider_recent":false,"slider_sold":false,"date":"2021-11-18T09:03:04.358Z","title":"Denim Shirt Grey","categories":{"_id":"61963b4300622d794418687f","type":"Woman","date":"2021-08-30T07:29:45.558Z","name":"Clothes","image":"https://cdn.pixabay.com/photo/2016/08/26/20/44/elan-1623087_1280.jpg","__v":0},"subcate":{"_id":"61963b43d0w0622d794418687f","date":"2021-08-30T07:29:45.558Z","name":"Shirts","parentid":"6196377900622d79441864422331b","__v":0},"shop":{"_id":"6196377900622d794418644b","is_active":false,"created_at":"2021-11-18T09:03:04.356Z","name":"ONE","description":"Clothing store in Islamabad","shopemail":"ONE@gmail.com","shopaddress":"islamabad","shopcity":"Islamabad","userid":"6196377800622d7944186447","image":"https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-confident-1714666150","__v":0},"price":"3,490 ","sale_title":"3,490 ","sale_price":"2,443","description":"men shirt","colors":"Red","size":"S,M,X,XL","images":[{"_id":"61963b4300622d794418687f","filename":"images[0]-1637235522052-730096647.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187316","filename":"images[0]-1637235757437-927339951.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187317","filename":"images[1]-1637235758276-122593199.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"}],"__v":1,"in_wishlist":false},{"_id":"61963b4300622d794418687e","on_sale":true,"sale_percent":0,"sold":10,"slider_new":false,"slider_recent":false,"slider_sold":false,"date":"2021-11-18T09:03:04.358Z","title":"Denim Shirt Grey","categories":{"_id":"61963b4300622d794418687f","type":"Woman","date":"2021-08-30T07:29:45.558Z","name":"Clothes","image":"https://cdn.pixabay.com/photo/2016/08/26/20/44/elan-1623087_1280.jpg","__v":0},"subcate":{"_id":"61963b43d0w0622d794418687f","date":"2021-08-30T07:29:45.558Z","name":"Shirts","parentid":"6196377900622d79441864422331b","__v":0},"shop":{"_id":"6196377900622d794418644b","is_active":false,"created_at":"2021-11-18T09:03:04.356Z","name":"ONE","description":"Clothing store in Islamabad","shopemail":"ONE@gmail.com","shopaddress":"islamabad","shopcity":"Islamabad","userid":"6196377800622d7944186447","image":"https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-confident-1714666150","__v":0},"price":"3,490 ","sale_title":"3,490 ","sale_price":"2,443","description":"men shirt","colors":"Red","size":"S,M,X,XL","images":[{"_id":"61963b4300622d794418687f","filename":"images[0]-1637235522052-730096647.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187316","filename":"images[0]-1637235757437-927339951.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187317","filename":"images[1]-1637235758276-122593199.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"}],"__v":1,"in_wishlist":false}]

class ProductsModel {
  ProductsModel({
      bool? success, 
      String? message, 
      List<Data>? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  ProductsModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _success;
  String? _message;
  List<Data>? _data;

  bool? get success => _success;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "61963b4300622d794418687e"
/// on_sale : true
/// sale_percent : 0
/// sold : 10
/// slider_new : false
/// slider_recent : false
/// slider_sold : false
/// date : "2021-11-18T09:03:04.358Z"
/// title : "Denim Shirt Grey"
/// categories : {"_id":"61963b4300622d794418687f","type":"Woman","date":"2021-08-30T07:29:45.558Z","name":"Clothes","image":"https://cdn.pixabay.com/photo/2016/08/26/20/44/elan-1623087_1280.jpg","__v":0}
/// subcate : {"_id":"61963b43d0w0622d794418687f","date":"2021-08-30T07:29:45.558Z","name":"Shirts","parentid":"6196377900622d79441864422331b","__v":0}
/// shop : {"_id":"6196377900622d794418644b","is_active":false,"created_at":"2021-11-18T09:03:04.356Z","name":"ONE","description":"Clothing store in Islamabad","shopemail":"ONE@gmail.com","shopaddress":"islamabad","shopcity":"Islamabad","userid":"6196377800622d7944186447","image":"https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-confident-1714666150","__v":0}
/// price : "3,490 "
/// sale_title : "3,490 "
/// sale_price : "2,443"
/// description : "men shirt"
/// colors : "Red"
/// size : "S,M,X,XL"
/// images : [{"_id":"61963b4300622d794418687f","filename":"images[0]-1637235522052-730096647.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187316","filename":"images[0]-1637235757437-927339951.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"},{"_id":"61963c2e00622d7944187317","filename":"images[1]-1637235758276-122593199.jpeg","url":"https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"}]
/// __v : 1
/// in_wishlist : false

class Data {
  Data({
      String? id, 
      bool? onSale, 
      int? salePercent, 
      int? sold, 
      bool? sliderNew, 
      bool? sliderRecent, 
      bool? sliderSold, 
      String? date, 
      String? title, 
      Categories? categories, 
      Subcate? subcate, 
      Shop? shop, 
      String? price, 
      String? saleTitle, 
      String? salePrice, 
      String? description, 
      String? colors, 
      String? size, 
      List<Images>? images, 
      int? v, 
      bool? inWishlist,}){
    _id = id;
    _onSale = onSale;
    _salePercent = salePercent;
    _sold = sold;
    _sliderNew = sliderNew;
    _sliderRecent = sliderRecent;
    _sliderSold = sliderSold;
    _date = date;
    _title = title;
    _categories = categories;
    _subcate = subcate;
    _shop = shop;
    _price = price;
    _saleTitle = saleTitle;
    _salePrice = salePrice;
    _description = description;
    _colors = colors;
    _size = size;
    _images = images;
    _v = v;
    _inWishlist = inWishlist;
}

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _onSale = json['on_sale'];
    _salePercent = json['sale_percent'];
    _sold = json['sold'];
    _sliderNew = json['slider_new'];
    _sliderRecent = json['slider_recent'];
    _sliderSold = json['slider_sold'];
    _date = json['date'];
    _title = json['title'];
    _categories = json['categories'] != null ? Categories.fromJson(json['categories']) : null;
    _subcate = json['subcate'] != null ? Subcate.fromJson(json['subcate']) : null;
    _shop = json['shop'] != null ? Shop.fromJson(json['shop']) : null;
    _price = json['price'];
    _saleTitle = json['sale_title'];
    _salePrice = json['sale_price'];
    _description = json['description'];
    _colors = json['colors'];
    _size = json['size'];
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    _v = json['__v'];
    _inWishlist = json['in_wishlist'];
  }
  String? _id;
  bool? _onSale;
  int? _salePercent;
  int? _sold;
  bool? _sliderNew;
  bool? _sliderRecent;
  bool? _sliderSold;
  String? _date;
  String? _title;
  Categories? _categories;
  Subcate? _subcate;
  Shop? _shop;
  String? _price;
  String? _saleTitle;
  String? _salePrice;
  String? _description;
  String? _colors;
  String? _size;
  List<Images>? _images;
  int? _v;
  bool? _inWishlist;

  String? get id => _id;
  bool? get onSale => _onSale;
  int? get salePercent => _salePercent;
  int? get sold => _sold;
  bool? get sliderNew => _sliderNew;
  bool? get sliderRecent => _sliderRecent;
  bool? get sliderSold => _sliderSold;
  String? get date => _date;
  String? get title => _title;
  Categories? get categories => _categories;
  Subcate? get subcate => _subcate;
  Shop? get shop => _shop;
  String? get price => _price;
  String? get saleTitle => _saleTitle;
  String? get salePrice => _salePrice;
  String? get description => _description;
  String? get colors => _colors;
  String? get size => _size;
  List<Images>? get images => _images;
  int? get v => _v;
  bool? get inWishlist => _inWishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['on_sale'] = _onSale;
    map['sale_percent'] = _salePercent;
    map['sold'] = _sold;
    map['slider_new'] = _sliderNew;
    map['slider_recent'] = _sliderRecent;
    map['slider_sold'] = _sliderSold;
    map['date'] = _date;
    map['title'] = _title;
    if (_categories != null) {
      map['categories'] = _categories?.toJson();
    }
    if (_subcate != null) {
      map['subcate'] = _subcate?.toJson();
    }
    if (_shop != null) {
      map['shop'] = _shop?.toJson();
    }
    map['price'] = _price;
    map['sale_title'] = _saleTitle;
    map['sale_price'] = _salePrice;
    map['description'] = _description;
    map['colors'] = _colors;
    map['size'] = _size;
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    map['__v'] = _v;
    map['in_wishlist'] = _inWishlist;
    return map;
  }

}

/// _id : "61963b4300622d794418687f"
/// filename : "images[0]-1637235522052-730096647.jpeg"
/// url : "https://www.shutterstock.com/image-photo/30092019-riga-latvia-sports-girl-prepares-1616559388"

class Images {
  Images({
      String? id, 
      String? filename, 
      String? url,}){
    _id = id;
    _filename = filename;
    _url = url;
}

  Images.fromJson(dynamic json) {
    _id = json['_id'];
    _filename = json['filename'];
    _url = json['url'];
  }
  String? _id;
  String? _filename;
  String? _url;

  String? get id => _id;
  String? get filename => _filename;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['filename'] = _filename;
    map['url'] = _url;
    return map;
  }

}

/// _id : "6196377900622d794418644b"
/// is_active : false
/// created_at : "2021-11-18T09:03:04.356Z"
/// name : "ONE"
/// description : "Clothing store in Islamabad"
/// shopemail : "ONE@gmail.com"
/// shopaddress : "islamabad"
/// shopcity : "Islamabad"
/// userid : "6196377800622d7944186447"
/// image : "https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-confident-1714666150"
/// __v : 0

class Shop {
  Shop({
      String? id, 
      bool? isActive, 
      String? createdAt, 
      String? name, 
      String? description, 
      String? shopemail, 
      String? shopaddress, 
      String? shopcity, 
      String? userid, 
      String? image, 
      int? v,}){
    _id = id;
    _isActive = isActive;
    _createdAt = createdAt;
    _name = name;
    _description = description;
    _shopemail = shopemail;
    _shopaddress = shopaddress;
    _shopcity = shopcity;
    _userid = userid;
    _image = image;
    _v = v;
}

  Shop.fromJson(dynamic json) {
    _id = json['_id'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _name = json['name'];
    _description = json['description'];
    _shopemail = json['shopemail'];
    _shopaddress = json['shopaddress'];
    _shopcity = json['shopcity'];
    _userid = json['userid'];
    _image = json['image'];
    _v = json['__v'];
  }
  String? _id;
  bool? _isActive;
  String? _createdAt;
  String? _name;
  String? _description;
  String? _shopemail;
  String? _shopaddress;
  String? _shopcity;
  String? _userid;
  String? _image;
  int? _v;

  String? get id => _id;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get description => _description;
  String? get shopemail => _shopemail;
  String? get shopaddress => _shopaddress;
  String? get shopcity => _shopcity;
  String? get userid => _userid;
  String? get image => _image;
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['name'] = _name;
    map['description'] = _description;
    map['shopemail'] = _shopemail;
    map['shopaddress'] = _shopaddress;
    map['shopcity'] = _shopcity;
    map['userid'] = _userid;
    map['image'] = _image;
    map['__v'] = _v;
    return map;
  }

}

/// _id : "61963b43d0w0622d794418687f"
/// date : "2021-08-30T07:29:45.558Z"
/// name : "Shirts"
/// parentid : "6196377900622d79441864422331b"
/// __v : 0

class Subcate {
  Subcate({
      String? id, 
      String? date, 
      String? name, 
      String? parentid, 
      int? v,}){
    _id = id;
    _date = date;
    _name = name;
    _parentid = parentid;
    _v = v;
}

  Subcate.fromJson(dynamic json) {
    _id = json['_id'];
    _date = json['date'];
    _name = json['name'];
    _parentid = json['parentid'];
    _v = json['__v'];
  }
  String? _id;
  String? _date;
  String? _name;
  String? _parentid;
  int? _v;

  String? get id => _id;
  String? get date => _date;
  String? get name => _name;
  String? get parentid => _parentid;
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['date'] = _date;
    map['name'] = _name;
    map['parentid'] = _parentid;
    map['__v'] = _v;
    return map;
  }

}

/// _id : "61963b4300622d794418687f"
/// type : "Woman"
/// date : "2021-08-30T07:29:45.558Z"
/// name : "Clothes"
/// image : "https://cdn.pixabay.com/photo/2016/08/26/20/44/elan-1623087_1280.jpg"
/// __v : 0

class Categories {
  Categories({
      String? id, 
      String? type, 
      String? date, 
      String? name, 
      String? image, 
      int? v,}){
    _id = id;
    _type = type;
    _date = date;
    _name = name;
    _image = image;
    _v = v;
}

  Categories.fromJson(dynamic json) {
    _id = json['_id'];
    _type = json['type'];
    _date = json['date'];
    _name = json['name'];
    _image = json['image'];
    _v = json['__v'];
  }
  String? _id;
  String? _type;
  String? _date;
  String? _name;
  String? _image;
  int? _v;

  String? get id => _id;
  String? get type => _type;
  String? get date => _date;
  String? get name => _name;
  String? get image => _image;
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['type'] = _type;
    map['date'] = _date;
    map['name'] = _name;
    map['image'] = _image;
    map['__v'] = _v;
    return map;
  }

}