// To parse this JSON data, do
//
//     final programmingModulesResult = programmingModulesResultFromJson(jsonString);

class ProgrammingModulesResult {
    ProgrammingModulesResult({
        required this.jml,
        required this.data,
    });

    int jml;
    List<ProgrammingModules> data;

    factory ProgrammingModulesResult.fromJson(Map<String, dynamic> json) => ProgrammingModulesResult(
        jml: json["jml"] == null ? null : json["jml"],
        data: List<ProgrammingModules>.from((json["data"] as List)
        .map((x) => ProgrammingModules.fromJson(x))
        .where((modules) =>
        modules.materi != null &&
        modules.estimasi != null &&
        modules.desc != null &&
        modules.silabus != null &&
        modules.image != null &&
        modules.gallery != null)),
    );

    // Map<String, dynamic> toJson() => {
    //     "jml": jml == null ? null : jml,
    //     "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    // };
}

class ProgrammingModules {
    ProgrammingModules({
        required this.id,
        required this.materi,
        required this.estimasi,
        required this.silabus,
        required this.desc,
        required this.image,
        required this.android,
        required this.desktop,
        required this.ios,
        required this.multiplatform,
        required this.gallery,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String materi;
    String estimasi;
    String silabus;
    String desc;
    String image;
    String android;
    String desktop;
    String ios;
    String multiplatform;
    String gallery;
    dynamic createdAt;
    dynamic updatedAt;

    factory ProgrammingModules.fromJson(Map<String, dynamic> json) => ProgrammingModules(
        id: json["id"] == null ? null : json["id"],
        materi: json["materi"] == null ? null : json["materi"],
        estimasi: json["estimasi"] == null ? null : json["estimasi"],
        silabus: json["silabus"] == null ? null : json["silabus"],
        desc: json["desc"] == null ? null : json["desc"],
        image: json["image"] == null ? null : json["image"],
        android: json["android"] == null ? null : json["android"],
        desktop: json["desktop"] == null ? null : json["desktop"],
        ios: json["ios"] == null ? null : json["ios"],
        multiplatform: json["multiplatform"] == null ? null : json["multiplatform"],
        gallery: json["gallery"] == null ? null : json["gallery"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    // Map<String, dynamic> toJson() => {
    //     "id": id == null ? null : id,
    //     "materi": materi == null ? null : materi,
    //     "estimasi": estimasi == null ? null : estimasi,
    //     "silabus": silabus == null ? null : silabus,
    //     "desc": desc == null ? null : desc,
    //     "image": image == null ? null : image,
    //     "android": android == null ? null : android,
    //     "desktop": desktop == null ? null : desktop,
    //     "ios": ios == null ? null : ios,
    //     "multiplatform": multiplatform == null ? null : multiplatform,
    //     "gallery": gallery == null ? null : gallery,
    //     "created_at": createdAt,
    //     "updated_at": updatedAt,
    // };
}
