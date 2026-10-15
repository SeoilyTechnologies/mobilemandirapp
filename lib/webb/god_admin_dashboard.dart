// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import 'package:mandirapp/common/network/app_constant.dart';
//
// class GodAdminDashboard extends StatefulWidget {
//   const GodAdminDashboard({super.key});
//
//   @override
//   State<GodAdminDashboard> createState() => _GodAdminDashboardState();
// }
//
// class _GodAdminDashboardState extends State<GodAdminDashboard> {
//   final String baseUrl = "https://mobilemandirapp.com/api/god";
//   final picker = ImagePicker();
//
//   bool loading = true;
//   bool updating = false;
//
//   List<Map<String, dynamic>> gods = [];
//   Map<String, dynamic>? selectedGod;
//   String? selectedGodId;
//
//   /// God text controllers
//   final Map<String, TextEditingController> c = {};
//
//   /// Thumbnail
//   XFile? newThumbnail;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchGods();
//   }
//
//   @override
//   void dispose() {
//     for (final v in c.values) {
//       v.dispose();
//     }
//     super.dispose();
//   }
//
//   // ================= FETCH =================
//
//   Future<void> fetchGods() async {
//     try {
//       final res =
//       await http.get(Uri.parse("$baseUrl/all-god-data-admin"));
//       final decoded = jsonDecode(res.body);
//       gods = List<Map<String, dynamic>>.from(decoded["data"]);
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//     loading = false;
//     setState(() {});
//   }
//
//   // ================= INIT CONTROLLERS =================
//
//   void initControllers(Map<String, dynamic> g) {
//     c.clear();
//
//     TextEditingController tc(String v) => TextEditingController(text: v);
//
//     String t(Map? m, String k) => m?[k]?.toString() ?? "";
//
//     c["god_name_hi"] = tc(t(g["god_name"], "hi"));
//     c["god_name_en"] = tc(t(g["god_name"], "en"));
//
//     c["birth_place_hi"] = tc(t(g["birth_place"], "hi"));
//     c["birth_place_en"] = tc(t(g["birth_place"], "en"));
//
//     c["father_name_hi"] = tc(t(g["father_name"], "hi"));
//     c["father_name_en"] = tc(t(g["father_name"], "en"));
//
//     c["mother_name_hi"] = tc(t(g["mother_name"], "hi"));
//     c["mother_name_en"] = tc(t(g["mother_name"], "en"));
//
//     c["detail_hi"] = tc(t(g["detail"], "hi"));
//     c["detail_en"] = tc(t(g["detail"], "en"));
//
//     void arr(String key) {
//       c["${key}_hi"] =
//           tc((g[key] ?? []).map((e) => e["hi"]).join(", "));
//       c["${key}_en"] =
//           tc((g[key] ?? []).map((e) => e["en"]).join(", "));
//     }
//
//     arr("wife");
//     arr("fav_food");
//     arr("fav_color");
//     arr("related_month");
//     arr("related_god");
//     arr("related_tithi");
//     arr("related_days");
//     arr("related_festival");
//   }
//
//   // ================= UPDATE GOD =================
//
//   Future<void> updateGod() async {
//     updating = true;
//     setState(() {});
//
//     final req =
//     http.MultipartRequest("POST", Uri.parse("$baseUrl/update"));
//
//     req.fields["id"] = selectedGod!["_id"].toString();
//
//     Map<String, String> hiEn(String hi, String en) =>
//         {"hi": hi, "en": en};
//
//     req.fields["god_name"] =
//         jsonEncode(hiEn(c["god_name_hi"]!.text, c["god_name_en"]!.text));
//     req.fields["birth_place"] =
//         jsonEncode(hiEn(c["birth_place_hi"]!.text, c["birth_place_en"]!.text));
//     req.fields["father_name"] =
//         jsonEncode(hiEn(c["father_name_hi"]!.text, c["father_name_en"]!.text));
//     req.fields["mother_name"] =
//         jsonEncode(hiEn(c["mother_name_hi"]!.text, c["mother_name_en"]!.text));
//     req.fields["detail"] =
//         jsonEncode(hiEn(c["detail_hi"]!.text, c["detail_en"]!.text));
//
//     for (final k in [
//       "wife",
//       "fav_food",
//       "fav_color",
//       "related_month",
//       "related_god",
//       "related_tithi",
//       "related_days",
//       "related_festival"
//     ]) {
//       req.fields[k] = jsonEncode(
//         List.generate(
//           c["${k}_hi"]!.text.split(",").length,
//               (i) => {
//             "hi": c["${k}_hi"]!.text.split(",")[i].trim(),
//             "en": c["${k}_en"]!.text.split(",").length > i
//                 ? c["${k}_en"]!.text.split(",")[i].trim()
//                 : "",
//           },
//         ),
//       );
//     }
//
//     if (newThumbnail != null) {
//       req.files.add(
//         http.MultipartFile.fromBytes(
//           "thumbnail",
//           await newThumbnail!.readAsBytes(),
//           filename: newThumbnail!.name,
//         ),
//       );
//     }
//
//     await req.send();
//     await fetchGods();
//
//     updating = false;
//     setState(() {});
//   }
//
//   // ================= ADD / EDIT TEMPLE =================
//
//   void showTempleDialog({Map<String, dynamic>? temple, int? index}) {
//     final nameHi =
//     TextEditingController(text: temple?["temple_name"]?["hi"] ?? "");
//     final nameEn =
//     TextEditingController(text: temple?["temple_name"]?["en"] ?? "");
//     final locHi =
//     TextEditingController(text: temple?["location"]?["hi"] ?? "");
//     final locEn =
//     TextEditingController(text: temple?["location"]?["en"] ?? "");
//
//     XFile? image;
//
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: Text(index == null ? context.l10n.addTemple : "Edit Temple"),
//         content: SingleChildScrollView(
//           child: Column(
//             children: [
//               _pairCtrl("Temple Name", nameHi, nameEn),
//               const SizedBox(height: 8),
//               _pairCtrl("Location", locHi, locEn),
//               const SizedBox(height: 12),
//               ElevatedButton(
//                 onPressed: () async {
//                   image = await picker.pickImage(
//                       source: ImageSource.gallery);
//                 },
//                 child: Text("Pick Image"),
//               )
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text("Cancel")),
//           ElevatedButton(
//             onPressed: () async {
//               final req = http.MultipartRequest(
//                   "POST", Uri.parse("$baseUrl/update"));
//
//               req.fields["id"] = selectedGod!["_id"].toString();
//
//               if (index == null) {
//                 req.fields["addTemple"] = jsonEncode({
//                   "temple_name": {"hi": nameHi.text, "en": nameEn.text},
//                   "location": {"hi": locHi.text, "en": locEn.text},
//                 });
//               } else {
//                 req.fields["templeIndex"] = index.toString();
//                 req.fields["templeUpdate"] = jsonEncode({
//                   "temple_name": {"hi": nameHi.text, "en": nameEn.text},
//                   "location": {"hi": locHi.text, "en": locEn.text},
//                 });
//               }
//
//               if (image != null) {
//                 req.files.add(
//                   http.MultipartFile.fromBytes(
//                     "temple_image",
//                     await image!.readAsBytes(),
//                     filename: image!.name,
//                   ),
//                 );
//               }
//
//               await req.send();
//               Navigator.pop(context);
//               await fetchGods();
//               setState(() {});
//             },
//             child: Text("SAVE"),
//           )
//         ],
//       ),
//     );
//   }
//
//   // ================= UI HELPERS =================
//
//   Widget _pair(String label, String hiKey, String enKey) {
//     return Row(
//       children: [
//         Expanded(
//             child: TextField(
//                 controller: c[hiKey],
//                 decoration:
//                 InputDecoration(labelText: "$label (HI)"))),
//         const SizedBox(width: 12),
//         Expanded(
//             child: TextField(
//                 controller: c[enKey],
//                 decoration:
//                 InputDecoration(labelText: "$label (EN)"))),
//       ],
//     );
//   }
//
//   Widget _pairCtrl(
//       String label, TextEditingController hi, TextEditingController en) {
//     return Row(
//       children: [
//         Expanded(
//             child: TextField(
//                 controller: hi,
//                 decoration:
//                 InputDecoration(labelText: "$label (HI)"))),
//         const SizedBox(width: 12),
//         Expanded(
//             child: TextField(
//                 controller: en,
//                 decoration:
//                 InputDecoration(labelText: "$label (EN)"))),
//       ],
//     );
//   }
//
//   // ================= BUILD =================
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("God Admin Dashboard"),
//         actions: [
//           if (selectedGod != null)
//             IconButton(
//               icon: const Icon(Icons.add),
//               onPressed: () => showTempleDialog(),
//             )
//         ],
//       ),
//       body: loading
//           ? const Center(child: CircularProgressIndicator())
//           : Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             DropdownButtonFormField<String>(
//               value: selectedGodId,
//               hint: Text("Select God"),
//               items: gods.map((g) {
//                 final n = g["god_name"];
//                 final t = (n["en"] ?? "").toString().isNotEmpty
//                     ? n["en"]
//                     : n["hi"];
//                 return DropdownMenuItem(
//                   value: g["_id"].toString(),
//                   child: Text(t),
//                 );
//               }).toList(),
//               onChanged: (id) {
//                 selectedGodId = id;
//                 selectedGod = gods
//                     .firstWhere((g) => g["_id"].toString() == id);
//                 initControllers(selectedGod!);
//                 setState(() {});
//               },
//             ),
//             const SizedBox(height: 16),
//             if (selectedGod != null)
//               Expanded(
//                 child: ListView(
//                   children: [
//                     _pair("God Name", "god_name_hi", "god_name_en"),
//                     _pair("Birth Place", "birth_place_hi",
//                         "birth_place_en"),
//                     _pair("Father Name", "father_name_hi",
//                         "father_name_en"),
//                     _pair("Mother Name", "mother_name_hi",
//                         "mother_name_en"),
//                     _pair("Wife", "wife_hi", "wife_en"),
//                     _pair("Fav Food", "fav_food_hi",
//                         "fav_food_en"),
//                     _pair("Fav Color", "fav_color_hi",
//                         "fav_color_en"),
//                     _pair("Related Month", "related_month_hi",
//                         "related_month_en"),
//                     _pair("Related God", "related_god_hi",
//                         "related_god_en"),
//                     _pair("Related Tithi", "related_tithi_hi",
//                         "related_tithi_en"),
//                     _pair("Related Days", "related_days_hi",
//                         "related_days_en"),
//                     _pair("Related Festival",
//                         "related_festival_hi",
//                         "related_festival_en"),
//                     const SizedBox(height: 12),
//                     _pair("Description", "detail_hi", "detail_en"),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: updating ? null : updateGod,
//                       child: Text("UPDATE GOD"),
//                     ),
//                     const Divider(height: 32),
//                     Text("Main Temples",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold)),
//                     ...List.generate(
//                       selectedGod!["main_temples"].length,
//                           (i) {
//                         final t =
//                         selectedGod!["main_temples"][i];
//                         return Card(
//                           child: ListTile(
//                             leading: t["image"] != null &&
//                                 t["image"]
//                                     .toString()
//                                     .isNotEmpty
//                                 ? Image.network(
//                               AppConstant.fileBaseUrl1 +
//                                   t["image"],
//                               width: 50,
//                               fit: BoxFit.cover,
//                             )
//                                 : const Icon(Icons.image),
//                             title: Text(
//                                 t["temple_name"]["en"] ??
//                                     t["temple_name"]["hi"]),
//                             subtitle: Text(
//                                 t["location"]["en"] ??
//                                     t["location"]["hi"]),
//                             trailing: IconButton(
//                               icon: const Icon(Icons.edit),
//                               onPressed: () =>
//                                   showTempleDialog(
//                                       temple: t, index: i),
//                             ),
//                           ),
//                         );
//                       },
//                     )
//                   ],
//                 ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:mandirapp/l10n/l10n_extension.dart';
import 'dart:convert';
//import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mandirapp/common/network/app_constant.dart';

import '../common/routes/routes.dart';
import 'UploadForm.dart';

class GodAdminDashboard extends StatefulWidget {
  const GodAdminDashboard({super.key});

  @override
  State<GodAdminDashboard> createState() => _GodAdminDashboardState();
}

class _GodAdminDashboardState extends State<GodAdminDashboard> {

  // 🔹 new temple dialog controllers
  final TextEditingController dlgTempleNameHi = TextEditingController();
  final TextEditingController dlgTempleNameEn = TextEditingController();
  final TextEditingController dlgTempleLocHi = TextEditingController();
  final TextEditingController dlgTempleLocEn = TextEditingController();



  // ================= ADD GOD CONTROLLERS =================

  final TextEditingController addGodNameHi = TextEditingController();
  final TextEditingController addGodNameEn = TextEditingController();
  final TextEditingController addBirthHi = TextEditingController();
  final TextEditingController addBirthEn = TextEditingController();
  final TextEditingController addFatherHi = TextEditingController();
  final TextEditingController addFatherEn = TextEditingController();
  final TextEditingController addMotherHi = TextEditingController();
  final TextEditingController addMotherEn = TextEditingController();
  final TextEditingController addDetailHi = TextEditingController();
  final TextEditingController addDetailEn = TextEditingController();

  final TextEditingController addWifeHi = TextEditingController();
  final TextEditingController addWifeEn = TextEditingController();
  final TextEditingController addFavFoodHi = TextEditingController();
  final TextEditingController addFavFoodEn = TextEditingController();
  final TextEditingController addFavColorHi = TextEditingController();
  final TextEditingController addFavColorEn = TextEditingController();
  final TextEditingController addRelatedMonthHi = TextEditingController();
  final TextEditingController addRelatedMonthEn = TextEditingController();
  final TextEditingController addRelatedGodHi = TextEditingController();
  final TextEditingController addRelatedGodEn = TextEditingController();
  final TextEditingController addRelatedTithiHi = TextEditingController();
  final TextEditingController addRelatedTithiEn = TextEditingController();
  final TextEditingController addRelatedDaysHi = TextEditingController();
  final TextEditingController addRelatedDaysEn = TextEditingController();
  final TextEditingController addRelatedFestivalHi = TextEditingController();
  final TextEditingController addRelatedFestivalEn = TextEditingController();

  XFile? addThumbnail;
  List<XFile> addGodImages = [];

  bool addGodLoading = false;

  XFile? dlgTempleImage;
  bool dlgLoading = false;



  final String baseUrl = "https://mobilemandirapp.com/api/god";

  bool loading = true;
  bool updating = false;

  List<Map<String, dynamic>> gods = [];
  String? selectedGodId;
  Map<String, dynamic>? selectedGod;

  final picker = ImagePicker();
  XFile? newThumbnail;
  List<XFile?> newTempleImages = [];

  final Map<String, TextEditingController> c = {};
  final List<Map<String, TextEditingController>> templeControllers = [];

  // ================== HELPERS ==================

  String t(dynamic obj, String lang) {
    if (obj is Map && obj[lang] != null) return obj[lang];
    return "";
  }

  String joinArr(List arr, String lang) {
    return arr.map((e) => e[lang] ?? "").join(", ");
  }

  Map<String, String> textObj(String hi, String en) => {
    "hi": hi,
    "en": en,
  };

  List<Map<String, String>> arrObj(String hi, String en) {
    final hiArr = hi.split(",").map((e) => e.trim()).toList();
    final enArr = en.split(",").map((e) => e.trim()).toList();
    final max = hiArr.length > enArr.length ? hiArr.length : enArr.length;

    return List.generate(max, (i) {
      return {
        "hi": i < hiArr.length ? hiArr[i] : "",
        "en": i < enArr.length ? enArr[i] : "",
      };
    });
  }

  // ================== INIT ==================

  @override
  void initState() {
    super.initState();
    fetchGods();
  }

  @override
  void dispose() {
    for (final v in c.values) {
      v.dispose();
    }
    for (final t in templeControllers) {
      for (final v in t.values) {
        v.dispose();
      }
    }
    super.dispose();
  }

  Future<void> addNewTempleFromDialog({
    required TextEditingController nameHi,
    required TextEditingController nameEn,
    required TextEditingController locHi,
    required TextEditingController locEn,
    required XFile? image,
  }) async
  {
    if (selectedGod == null) return;

    dlgLoading = true;
    setState(() {});

    /// STEP 1️⃣ ADD TEMPLE (TEXT ONLY)
    final req = http.MultipartRequest(
      "POST",
      Uri.parse("$baseUrl/update"),
    );

    req.fields["id"] = selectedGod!["_id"];
    req.fields["addTemple"] = jsonEncode({
      "temple_name": {
        "hi": nameHi.text,
        "en": nameEn.text,
      },
      "location": {
        "hi": locHi.text,
        "en": locEn.text,
      },
    });

    final res = await req.send();

    if (res.statusCode != 200) {
      dlgLoading = false;
      return;
    }

    /// 🔥 IMPORTANT: reload + rebind selectedGod
    await fetchGods();

    selectedGod = gods.firstWhere(
          (g) => g["_id"] == selectedGodId,
    );

    /// STEP 2️⃣ UPLOAD IMAGE FOR LAST TEMPLE
    if (image != null) {
      final newIndex = selectedGod!["main_temples"].length - 1;

      final imgReq = http.MultipartRequest(
        "POST",
        Uri.parse("$baseUrl/update"),
      );

      imgReq.fields["id"] = selectedGod!["_id"];
      imgReq.fields["templeIndex"] = newIndex.toString();

      imgReq.files.add(
        http.MultipartFile.fromBytes(
          "temple_image",
          await image.readAsBytes(),
          filename: image.name,
        ),
      );

      await imgReq.send();
    }

    dlgLoading = false;
    Navigator.pop(context);

    await fetchGods();

    selectedGod = gods.firstWhere(
          (g) => g["_id"] == selectedGodId,
    );

    setState(() {});

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Temple added with image ✅")),
    );
  }



  void showAddTempleDialog() {
    final nameHi = TextEditingController();
    final nameEn = TextEditingController();
    final locHi = TextEditingController();
    final locEn = TextEditingController();
    XFile? image;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return StatefulBuilder(
          builder: (context, setDlgState) {
            return AlertDialog(
              title: Text("Add New Temple"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: nameHi,
                            decoration: const InputDecoration(
                              labelText: "Temple Name (HI)",
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            controller: nameEn,
                            decoration: const InputDecoration(
                              labelText: "Temple Name (EN)",
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: locHi,
                            decoration: const InputDecoration(
                              labelText: "Location (HI)",
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            controller: locEn,
                            decoration: const InputDecoration(
                              labelText: "Location (EN)",
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            image = await picker.pickImage(
                              source: ImageSource.gallery,
                            );
                            setDlgState(() {});
                          },
                          child: Text("Pick Image"),
                        ),
                        const SizedBox(width: 12),
                        if (image != null)
                          const Icon(Icons.check_circle,
                              color: Colors.green),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: dlgLoading
                      ? null
                      : () => addNewTempleFromDialog(
                    nameHi: nameHi,
                    nameEn: nameEn,
                    locHi: locHi,
                    locEn: locEn,
                    image: image,
                  ),
                  child: dlgLoading
                      ? const SizedBox(
                    height: 18,
                    width: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                      : Text("ADD TEMPLE"),
                ),
              ],
            );
          },
        );
      },
    );
  }




  // ================== FETCH ADMIN ==================

  Future<void> fetchGods() async {
    try {
      final res = await http.get(
        Uri.parse("$baseUrl/all-god-data-admin"),
      );

      if (res.statusCode != 200) throw "API failed";

      final decoded = jsonDecode(res.body);
      gods = List<Map<String, dynamic>>.from(decoded["data"]);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to load gods")),
      );
    } finally {
      loading = false;
      setState(() {});
    }
  }

  // ================== INIT CONTROLLERS ==================

  void initControllers(Map<String, dynamic> g) {
    c.clear();
    templeControllers.clear();

    TextEditingController tc(String v) => TextEditingController(text: v);

    // SINGLE TEXT
    c["god_name_hi"] = tc(t(g["god_name"], "hi"));
    c["god_name_en"] = tc(t(g["god_name"], "en"));

    c["birth_place_hi"] = tc(t(g["birth_place"], "hi"));
    c["birth_place_en"] = tc(t(g["birth_place"], "en"));

    c["father_name_hi"] = tc(t(g["father_name"], "hi"));
    c["father_name_en"] = tc(t(g["father_name"], "en"));

    c["mother_name_hi"] = tc(t(g["mother_name"], "hi"));
    c["mother_name_en"] = tc(t(g["mother_name"], "en"));

    c["detail_hi"] = tc(t(g["detail"], "hi"));
    c["detail_en"] = tc(t(g["detail"], "en"));

    // ARRAY TEXT
    c["wife_hi"] = tc(joinArr(g["wife"] ?? [], "hi"));
    c["wife_en"] = tc(joinArr(g["wife"] ?? [], "en"));

    c["fav_food_hi"] = tc(joinArr(g["fav_food"] ?? [], "hi"));
    c["fav_food_en"] = tc(joinArr(g["fav_food"] ?? [], "en"));

    c["fav_color_hi"] = tc(joinArr(g["fav_color"] ?? [], "hi"));
    c["fav_color_en"] = tc(joinArr(g["fav_color"] ?? [], "en"));

    c["related_month_hi"] = tc(joinArr(g["related_month"] ?? [], "hi"));
    c["related_month_en"] = tc(joinArr(g["related_month"] ?? [], "en"));

    c["related_god_hi"] = tc(joinArr(g["related_god"] ?? [], "hi"));
    c["related_god_en"] = tc(joinArr(g["related_god"] ?? [], "en"));

    c["related_tithi_hi"] = tc(joinArr(g["related_tithi"] ?? [], "hi"));
    c["related_tithi_en"] = tc(joinArr(g["related_tithi"] ?? [], "en"));

    c["related_days_hi"] = tc(joinArr(g["related_days"] ?? [], "hi"));
    c["related_days_en"] = tc(joinArr(g["related_days"] ?? [], "en"));

    c["related_festival_hi"] = tc(joinArr(g["related_festival"] ?? [], "hi"));
    c["related_festival_en"] = tc(joinArr(g["related_festival"] ?? [], "en"));

    // TEMPLES
    for (final t in g["main_temples"] ?? []) {
      templeControllers.add({
        "name_hi": tc(t["temple_name"]?["hi"] ?? ""),
        "name_en": tc(t["temple_name"]?["en"] ?? ""),
        "loc_hi": tc(t["location"]?["hi"] ?? ""),
        "loc_en": tc(t["location"]?["en"] ?? ""),
      });
    }

    newTempleImages =
    List<XFile?>.filled(templeControllers.length, null);
  }

  Future<void> uploadTempleImage(int index) async {
    final req = http.MultipartRequest(
      "POST",
      Uri.parse("$baseUrl/update"),
    );

    req.fields["id"] = selectedGod!["_id"];
    req.fields["templeIndex"] = index.toString();

    req.files.add(
      http.MultipartFile.fromBytes(
        "temple_image",
        await newTempleImages[index]!.readAsBytes(),
        filename: newTempleImages[index]!.name,
      ),
    );

    await req.send();
    await fetchGods();
  }


  // ================== UPDATE ==================

  Future<void> updateGod() async {
    final req = http.MultipartRequest(
      "POST",
      Uri.parse("$baseUrl/update"),
    );

    req.fields["id"] = selectedGod!["_id"];

    req.fields["god_name"] =
        jsonEncode(textObj(c["god_name_hi"]!.text, c["god_name_en"]!.text));

    req.fields["detail"] =
        jsonEncode(textObj(c["detail_hi"]!.text, c["detail_en"]!.text));

    if (newThumbnail != null) {
      req.files.add(
        http.MultipartFile.fromBytes(
          "thumbnail",
          await newThumbnail!.readAsBytes(),
          filename: newThumbnail!.name,
        ),
      );
    }

    await req.send();
    await fetchGods();
    setState(() {});
  }

  void openUploadFormInNewTab() {
    // final route = AppRoutes.UPLOAD_FORM; // tumhara route string
    //
    // final url = '${html.window.location.origin}/#${route}';
    // html.window.open(url, '_blank');
  }


  /*update temple text*/

  Future<void> updateTempleText(int index) async {
    final req = http.MultipartRequest(
      "POST",
      Uri.parse("$baseUrl/update"),
    );

    req.fields["id"] = selectedGod!["_id"];
    req.fields["templeIndex"] = index.toString();

    req.fields["templeUpdate"] = jsonEncode({
      "temple_name": {
        "hi": templeControllers[index]["name_hi"]!.text,
        "en": templeControllers[index]["name_en"]!.text,
      },
      "location": {
        "hi": templeControllers[index]["loc_hi"]!.text,
        "en": templeControllers[index]["loc_en"]!.text,
      },
    });

    await req.send();
    await fetchGods();
    setState(() {});
  }

  // ================== UI HELPERS ==================

  Widget field(String label, String key) {
    return TextField(
      controller: c[key],
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }

  // ================== BUILD ==================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("God Admin Dashboard"),actions: [Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton.icon(
          icon: const Icon(Icons.add),
          label: Text("Add New Temple"),
          onPressed: showAddTempleDialog,
        ),
      ),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          label: Text("Add New God"),
          onPressed: showAddGodDialog,
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          label: Text("Aarti page"),
          onPressed: (){
            // Navigator.push(    context,
            //   MaterialPageRoute<void>(
            //     builder: (context) => const UploadForm(),
            //   ),
            // );
            openUploadFormInNewTab();

          },
        ),
      ],),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedGodId,
              hint: Text("Select God"),
              items: gods.map<DropdownMenuItem<String>>((g) {
                final name = g["god_name"];
                return DropdownMenuItem<String>(
                  value: g["_id"],
                  child: Text(
                    name["en"].toString().isNotEmpty
                        ? name["en"]
                        : name["hi"],
                  ),
                );
              }).toList(),
              onChanged: (id) {
                selectedGodId = id;
                selectedGod =
                    gods.firstWhere((g) => g["_id"] == id);
                initControllers(selectedGod!);
                setState(() {});
              },
            ),
            const SizedBox(height: 16),
            if (selectedGod != null)
              Expanded(
                child: ListView(
                  children: [

                    /// ================= THUMBNAIL =================
                    Text("Thumbnail", style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: selectedGod!["thumbnail"] != null &&
                              selectedGod!["thumbnail"].toString().isNotEmpty
                              ? Image.network(
                            AppConstant.fileBaseUrl1 + selectedGod!["thumbnail"],
                            fit: BoxFit.cover,
                          )
                              : const Icon(Icons.image),
                        ),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () async {
                            newThumbnail =
                            await picker.pickImage(source: ImageSource.gallery);
                            setState(() {});
                          },
                          child: Text("Change Thumbnail"),
                        ),
                      ],
                    ),

                    const Divider(height: 32),

                    /// ================= GOD IMAGES =================
                    SelectableText(
                      selectedGod!["_id"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("God Images", style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ...(selectedGod!["godimage"] as List).map<Widget>((img) {
                          return Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Image.network(
                              AppConstant.fileBaseUrl1 + img,
                              fit: BoxFit.cover,
                            ),
                          );
                        }).toList(),
                        GestureDetector(
                          onTap: () async {
                            final img =
                            await picker.pickImage(source: ImageSource.gallery);
                            if (img != null) {
                              // yahan godimage upload API call aayega (already backend ready)
                            }
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            color: Colors.grey.shade300,
                            child: const Icon(Icons.add),
                          ),
                        )
                      ],
                    ),

                    const Divider(height: 32),

                    /// ================= BASIC DETAILS =================
                    _pairField("God Name", "god_name_hi", "god_name_en"),
                    _pairField("Birth Place", "birth_place_hi", "birth_place_en"),
                    _pairField("Father Name", "father_name_hi", "father_name_en"),
                    _pairField("Mother Name", "mother_name_hi", "mother_name_en"),
                    _pairField("Wife", "wife_hi", "wife_en"),
                    _pairField("Fav Food", "fav_food_hi", "fav_food_en"),
                    _pairField("Fav Color", "fav_color_hi", "fav_color_en"),
                    _pairField("Related Month", "related_month_hi", "related_month_en"),
                    _pairField("Related God", "related_god_hi", "related_god_en"),
                    _pairField("Related Tithi", "related_tithi_hi", "related_tithi_en"),
                    _pairField("Related Days", "related_days_hi", "related_days_en"),
                    _pairField(
                        "Related Festival", "related_festival_hi", "related_festival_en"),

                    /// ================= DETAIL =================
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: c["detail_hi"],
                            maxLines: 5,
                            decoration: const InputDecoration(
                              labelText: "Detail (HI)",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: c["detail_en"],
                            maxLines: 5,
                            decoration: const InputDecoration(
                              labelText: "Detail (EN)",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Divider(height: 32),

                    /// ================= MAIN TEMPLES =================
                    Text("Main Temples", style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),

                    ...List.generate(templeControllers.length, (i) {
                      final temple = selectedGod!["main_temples"][i];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    color: Colors.grey.shade300,
                                    child: temple["image"] != null &&
                                        temple["image"].toString().isNotEmpty
                                        ? Image.network(
                                      AppConstant.fileBaseUrl1 + temple["image"],
                                      fit: BoxFit.cover,
                                    )
                                        : const Icon(Icons.image),
                                  ),
                                  const SizedBox(width: 12),
                                  ElevatedButton(
                                    onPressed: () async {
                                      newTempleImages[i] =
                                      await picker.pickImage(source: ImageSource.gallery);
                                      setState(() {});
                                    },
                                    child: Text("Change Temple Image"),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              _pairCtrl(
                                "Temple Name",
                                templeControllers[i]["name_hi"]!,
                                templeControllers[i]["name_en"]!,
                              ),
                              const SizedBox(height: 8),
                              _pairCtrl(
                                "Location",
                                templeControllers[i]["loc_hi"]!,
                                templeControllers[i]["loc_en"]!,
                              ),

                              if (newTempleImages[i] != null)
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton.icon(
                                    icon: const Icon(Icons.upload),
                                    label: Text("Upload Temple Image"),
                                    onPressed: () => uploadTempleImage(i),
                                  ),
                                ),

                            ],
                          ),
                        ),
                      );
                    }),

                    const SizedBox(height: 24),

                    /// ================= UPDATE BUTTON =================
                    ElevatedButton(
                      onPressed: updating ? null : updateGod,
                      child: updating
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Text("UPDATE GOD DATA"),
                    ),
                  ],
                ),
              )

          ],
        ),
      ),
    );
  }



  Future<void> uploadNewGod() async {
    addGodLoading = true;
    setState(() {});

    try {
      final req = http.MultipartRequest(
        "POST",
        Uri.parse("$baseUrl/upload-god-data"),
      );

      Map<String, dynamic> textObj(String hi, String en) => {
        "hi": hi,
        "en": en,
      };

      List<Map<String, dynamic>> arrObj(String hi, String en) {
        final hiArr = hi.split(",").map((e) => e.trim()).toList();
        final enArr = en.split(",").map((e) => e.trim()).toList();
        final max = hiArr.length > enArr.length ? hiArr.length : enArr.length;

        return List.generate(max, (i) {
          return {
            "hi": i < hiArr.length ? hiArr[i] : "",
            "en": i < enArr.length ? enArr[i] : "",
          };
        });
      }

      // ================= TEXT FIELDS =================

      req.fields["god_name"] =
          jsonEncode(textObj(addGodNameHi.text, addGodNameEn.text));

      req.fields["birth_place"] =
          jsonEncode(textObj(addBirthHi.text, addBirthEn.text));

      req.fields["father_name"] =
          jsonEncode(textObj(addFatherHi.text, addFatherEn.text));

      req.fields["mother_name"] =
          jsonEncode(textObj(addMotherHi.text, addMotherEn.text));

      req.fields["detail"] =
          jsonEncode(textObj(addDetailHi.text, addDetailEn.text));

      // ================= ARRAY FIELDS =================

      req.fields["wife"] =
          jsonEncode(arrObj(addWifeHi.text, addWifeEn.text));

      req.fields["fav_food"] =
          jsonEncode(arrObj(addFavFoodHi.text, addFavFoodEn.text));

      req.fields["fav_color"] =
          jsonEncode(arrObj(addFavColorHi.text, addFavColorEn.text));

      req.fields["related_month"] =
          jsonEncode(arrObj(addRelatedMonthHi.text, addRelatedMonthEn.text));

      req.fields["related_god"] =
          jsonEncode(arrObj(addRelatedGodHi.text, addRelatedGodEn.text));

      req.fields["related_tithi"] =
          jsonEncode(arrObj(addRelatedTithiHi.text, addRelatedTithiEn.text));

      req.fields["related_days"] =
          jsonEncode(arrObj(addRelatedDaysHi.text, addRelatedDaysEn.text));

      req.fields["related_festival"] =
          jsonEncode(arrObj(addRelatedFestivalHi.text, addRelatedFestivalEn.text));

      // ================= FILES =================

      if (addThumbnail != null) {
        req.files.add(
          http.MultipartFile.fromBytes(
            "thumbnail",
            await addThumbnail!.readAsBytes(),
            filename: addThumbnail!.name,
          ),
        );
      }

      for (final img in addGodImages) {
        req.files.add(
          http.MultipartFile.fromBytes(
            "godimage",
            await img.readAsBytes(),
            filename: img.name,
          ),
        );
      }

      final res = await req.send();

      if (res.statusCode != 201) {
        throw Exception("Upload failed");
      }

      await fetchGods();

      Navigator.pop(context);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("God Added Successfully ✅")),
      );

    } catch (e) {
    }

    addGodLoading = false;
    setState(() {});
  }


  void showAddGodDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: Text("Add New God"),
          content: SizedBox(
            width: 700,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  _pairCtrl("God Name", addGodNameHi, addGodNameEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Birth Place", addBirthHi, addBirthEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Father Name", addFatherHi, addFatherEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Mother Name", addMotherHi, addMotherEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Wife (comma separated)", addWifeHi, addWifeEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Fav Food", addFavFoodHi, addFavFoodEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Fav Color", addFavColorHi, addFavColorEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Related Month", addRelatedMonthHi, addRelatedMonthEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Related God", addRelatedGodHi, addRelatedGodEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Related Tithi", addRelatedTithiHi, addRelatedTithiEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Related Days", addRelatedDaysHi, addRelatedDaysEn),
                  const SizedBox(height: 8),
                  _pairCtrl("Related Festival", addRelatedFestivalHi, addRelatedFestivalEn),
                  const SizedBox(height: 12),

                  _pairCtrl("Detail", addDetailHi, addDetailEn),

                  const SizedBox(height: 12),

                  ElevatedButton(
                    onPressed: () async {
                      addThumbnail =
                      await picker.pickImage(source: ImageSource.gallery);
                      setState(() {});
                    },
                    child: Text("Pick Thumbnail"),
                  ),

                  const SizedBox(height: 8),

                  ElevatedButton(
                    onPressed: () async {
                      final img =
                      await picker.pickImage(source: ImageSource.gallery);
                      if (img != null) {
                        addGodImages.add(img);
                        setState(() {});
                      }
                    },
                    child: Text("Add God Image"),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: addGodLoading ? null : uploadNewGod,
              child: addGodLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : Text("ADD GOD"),
            ),
          ],
        );
      },
    );
  }


  Widget _pairField(String label, String hiKey, String enKey) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(child: field("$label (HI)", hiKey)),
          const SizedBox(width: 12),
          Expanded(child: field("$label (EN)", enKey)),
        ],
      ),
    );
  }

  Widget _pairCtrl(
      String label,
      TextEditingController hi,
      TextEditingController en,
      ) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: hi,
            decoration: InputDecoration(
              labelText: "$label (HI)",
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: TextField(
            controller: en,
            decoration: InputDecoration(
              labelText: "$label (EN)",
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

}
