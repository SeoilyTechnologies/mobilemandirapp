import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:mandirapp/common/component/network_image.dart';

/// =======================
/// MODEL
/// =======================
class RashiFormModel {
  final String id;
  final String nameHi;
  final String nameEn;
  final String thumbnail;

  final TextEditingController rashiController;
  final TextEditingController luckyController;

  RashiFormModel({
    required this.id,
    required this.nameHi,
    required this.nameEn,
    required this.thumbnail,
    String rashiData = '',
    String luckyNumber = '',
  })  : rashiController = TextEditingController(text: rashiData),
        luckyController = TextEditingController(text: luckyNumber);

  factory RashiFormModel.fromJson(Map<String, dynamic> json) {
    return RashiFormModel(
      id: json["_id"],
      nameHi: json["name_hi"],
      nameEn: json["name_en"],
      thumbnail: json["thumbnail"] ?? "",
    );
  }
}

/// =======================
/// PAGE
/// =======================
class HoroscopeAdminPage extends StatefulWidget {
  const HoroscopeAdminPage({super.key});

  @override
  State<HoroscopeAdminPage> createState() => _HoroscopeAdminPageState();
}

class _HoroscopeAdminPageState extends State<HoroscopeAdminPage> {
  String selectedDate = DateFormat("dd-MM-yyyy").format(DateTime.now());
  bool isLoading = false;
  bool isRashiLoading = true;

  List<RashiFormModel> rashis = [];

  @override
  void initState() {
    super.initState();
    fetchRashis();
  }

  /// =======================
  /// FETCH RASHI MASTER
  /// =======================
  Future<void> fetchRashis() async {
    try {
      final response =
      await http.get(Uri.parse("https://mobilemandirapp.com/api/rashi"));

      final res = jsonDecode(response.body);

      if (res["success"] == true) {
        setState(() {
          rashis = (res["data"] as List)
              .map((e) => RashiFormModel.fromJson(e))
              .toList();
          isRashiLoading = false;
        });
      } else {
        throw "Failed";
      }
    } catch (_) {
      isRashiLoading = false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to load rashi list")),
      );
    }
  }

  /// =======================
  /// DATE PICKER
  /// =======================
  Future<void> pickDate() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2035),
      initialDate: DateTime.now(),
    );

    if (date != null) {
      setState(() {
        selectedDate = DateFormat("dd-MM-yyyy").format(date);
      });
    }
  }

  /// =======================
  /// SUBMIT HOROSCOPE
  /// =======================
  Future<void> submitHoroscope() async {
    if (rashis.isEmpty) return;

    setState(() => isLoading = true);

    final payload = {
      "date": selectedDate,
      "rashis": rashis
          .where((r) => r.rashiController.text.trim().isNotEmpty)
          .map((r) => {
        "rashi_id": r.id,
        "rashi_data": r.rashiController.text,
        "lucky_number": r.luckyController.text,
      })
          .toList(),
    };

    try {
      final response = await http.post(
        Uri.parse(
            "https://mobilemandirapp.com/api/horscope/add-horscope"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(payload),
      );

      final res = jsonDecode(response.body);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            res["success"] == true
                ? "Rashiphal saved successfully ✅"
                : res["message"] ?? "Failed",
          ),
        ),
      );
    } catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Server / Network error")),
      );
    }

    setState(() => isLoading = false);
  }

  /// =======================
  /// DISPOSE CONTROLLERS
  /// =======================
  @override
  void dispose() {
    for (final r in rashis) {
      r.rashiController.dispose();
      r.luckyController.dispose();
    }
    super.dispose();
  }

  /// =======================
  /// UI
  /// =======================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Rashiphal Admin"),
        centerTitle: true,
      ),
      body: isRashiLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
        children: [
          /// DATE
          ListTile(
            title: Text(
              "Date: $selectedDate",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: pickDate,
            ),
          ),

          const Divider(),

          /// RASHI LIST
          Expanded(
            child: ListView.builder(
              itemCount: rashis.length,
              itemBuilder: (context, index) {
                final r = rashis[index];

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (r.thumbnail.isNotEmpty)
                              NetworkImageWidget(
                                imageUrl: r.thumbnail,
                                imageHeight: 50,
                                imageWidth: 50,
                                fullimage: true,
                              ),
                            const SizedBox(width: 10),
                            Text(
                              "${r.nameHi} (${r.nameEn})",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        TextField(
                          controller: r.rashiController,
                          maxLines: 4,
                          decoration: const InputDecoration(
                            labelText: "Rashiphal",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        const SizedBox(height: 10),

                        TextField(
                          controller: r.luckyController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: "Lucky Number",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          /// SUBMIT BUTTON
          Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: isLoading ? null : submitHoroscope,
                child: isLoading
                    ? const CircularProgressIndicator(
                  color: Colors.white,
                )
                    : Text("Save / Update Rashiphal"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
