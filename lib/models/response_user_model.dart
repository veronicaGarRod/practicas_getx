class ResponseUserModel {
    ResponseUserModel({
       required  this.page,
       required this.perPage,
       required  this.total,
       required  this.totalPages,
       required  this.data,
       required  this.support,
    });

    int page;
    int perPage;
    int total;
    int totalPages;
    List<User> data;
    Support support;

    factory ResponseUserModel.fromJson(Map<String, dynamic> json) => ResponseUserModel(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
        support: Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
    };
}

class User {
    User({
      required  this.id,
      required  this.email,
      required  this.firstName,
      required  this.lastName,
      required  this.avatar,
    });

    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
    };
}

class Support {
    Support({
      required  this.url,
       required this.text,
    });

    String url;
    String text;

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
    };
}
