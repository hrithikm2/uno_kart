import 'dart:convert';

import 'package:dio/dio.dart';

MenuNamesWithId menuNamesWithIdFromJson(String str) => MenuNamesWithId.fromJson(json.decode(str));

String menuNamesWithIdToJson(MenuNamesWithId data) => json.encode(data.toJson());

var dio = Dio();
var menuData;

Future<MenuNamesWithId> createAlbumMenuDetails(String restId) async {
  print(restId);

  dio.options.contentType = Headers.formUrlEncodedContentType;
  final response = await dio.post(
    "https://unokart.in/unocart/food_restro/rest_menu_details.php",
    data: {'rest_id': restId},
    options: Options(contentType: Headers.formUrlEncodedContentType),
  );

  if (response.statusCode == 200) {
    print("Got the data");
    var menuItems = jsonDecode(response.data);
    print(menuItems.toString());
    menuData = MenuNamesWithId.fromJson(jsonDecode(response.data));
    return MenuNamesWithId.fromJson(jsonDecode(response.data));
  } else {
    throw Exception('Failed to create album.');
  }
}

class MenuNamesWithId {
  MenuNamesWithId({
    this.success,
    this.menuDataData,
  });

  int success;
  List<MenuDataDatum> menuDataData;

  factory MenuNamesWithId.fromJson(Map<String, dynamic> json) => MenuNamesWithId(
    success: json["success"],
    menuDataData: List<MenuDataDatum>.from(json["MenuDataData"].map((x) => MenuDataDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "MenuDataData": List<dynamic>.from(menuDataData.map((x) => x.toJson())),
  };
}

class MenuDataDatum {
  MenuDataDatum({
    this.menuId,
    this.menuName,
  });

  String menuId;
  String menuName;

  factory MenuDataDatum.fromJson(Map<String, dynamic> json) => MenuDataDatum(
    menuId: json["menu_id"],
    menuName: json["menu_name"],
  );

  Map<String, dynamic> toJson() => {
    "menu_id": menuId,
    "menu_name": menuName,
  };
}
