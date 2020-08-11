
// To parse this JSON data, do
//
//     final foodList = foodListFromJson(jsonString);

import 'dart:convert';

List<FoodList> foodListFromJson(String str) => List<FoodList>.from(json.decode(str).map((x) => FoodList.fromJson(x)));

String foodListToJson(List<FoodList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoodList {
  FoodList({
    this.id,
    this.restaurantId,
    this.foodCategoryId,
    this.foodName,
    this.image,
    this.price,
    this.discountPrice,
    this.description,
    this.ingredients,
    this.unit,
    this.packageCount,
    this.weight,
    this.featured,
    this.deliverableFood,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
    this.foodCategory,
  });

  int id;
  int restaurantId;
  int foodCategoryId;
  String foodName;
  String image;
  String price;
  String discountPrice;
  String description;
  String ingredients;
  String unit;
  int packageCount;
  String weight;
  int featured;
  int deliverableFood;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  Restaurant restaurant;
  FoodCategory foodCategory;

  factory FoodList.fromJson(Map<String, dynamic> json) => FoodList(
    id: json["id"],
    restaurantId: json["restaurant_id"],
    foodCategoryId: json["food_category_id"],
    foodName: json["food_name"],
    image: json["image"],
    price: json["price"],
    discountPrice: json["discount_price"],
    description: json["description"],
    ingredients: json["ingredients"],
    unit: json["unit"],
    packageCount: json["package_count"],
    weight: json["weight"],
    featured: json["featured"],
    deliverableFood: json["deliverable_food"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    restaurant: Restaurant.fromJson(json["restaurant"]),
    foodCategory: FoodCategory.fromJson(json["food_category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "restaurant_id": restaurantId,
    "food_category_id": foodCategoryId,
    "food_name": foodName,
    "image": image,
    "price": price,
    "discount_price": discountPrice,
    "description": description,
    "ingredients": ingredients,
    "unit": unit,
    "package_count": packageCount,
    "weight": weight,
    "featured": featured,
    "deliverable_food": deliverableFood,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "restaurant": restaurant.toJson(),
    "food_category": foodCategory.toJson(),
  };
}

class FoodCategory {
  FoodCategory({
    this.id,
    this.name,
    this.image,
    this.description,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String image;
  String description;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory FoodCategory.fromJson(Map<String, dynamic> json) => FoodCategory(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    description: json["description"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "description": description,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class Restaurant {
  Restaurant({
    this.id,
    this.userId,
    this.name,
    this.city,
    this.email,
    this.phone,
    this.website,
    this.address,
    this.characteristics,
    this.openStatus,
    this.alcoholStatus,
    this.seatingStatus,
    this.cuisine,
    this.tags,
    this.paymentMethod,
    this.deliveryCharge,
    this.sellingPercentage,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  String name;
  String city;
  String email;
  String phone;
  String website;
  String address;
  String characteristics;
  int openStatus;
  int alcoholStatus;
  int seatingStatus;
  int cuisine;
  int tags;
  int paymentMethod;
  int deliveryCharge;
  int sellingPercentage;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: json["id"],
    userId: json["user_id"],
    name: json["name"],
    city: json["city"],
    email: json["email"],
    phone: json["phone"],
    website: json["website"],
    address: json["address"],
    characteristics: json["characteristics"],
    openStatus: json["open_status"],
    alcoholStatus: json["alcohol_status"],
    seatingStatus: json["seating_status"],
    cuisine: json["cuisine"],
    tags: json["tags"],
    paymentMethod: json["payment_method"],
    deliveryCharge: json["delivery_charge"],
    sellingPercentage: json["selling_percentage"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "name": name,
    "city": city,
    "email": email,
    "phone": phone,
    "website": website,
    "address": address,
    "characteristics": characteristics,
    "open_status": openStatus,
    "alcohol_status": alcoholStatus,
    "seating_status": seatingStatus,
    "cuisine": cuisine,
    "tags": tags,
    "payment_method": paymentMethod,
    "delivery_charge": deliveryCharge,
    "selling_percentage": sellingPercentage,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
