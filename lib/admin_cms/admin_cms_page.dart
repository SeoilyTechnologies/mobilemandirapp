import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'notification_service.dart';

class AdminCmsPage extends StatefulWidget {
  const AdminCmsPage({super.key});

  @override
  State<AdminCmsPage> createState() => _AdminCmsPageState();
}

class _AdminCmsPageState extends State<AdminCmsPage> {

  final String baseUrl = "https://mobilemandirapp.com/api";

  /// 🔐 TOKEN
  final String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY5YzIyMDNhNTFjNjAxMDNlZmFlNzlhNCIsInBob25lIjoiODY5OTEwNTM2MyIsImVtYWlsIjpudWxsLCJ0b2tlblZlcnNpb24iOjcsImlhdCI6MTc3NDQzNTAxMiwiZXhwIjoxODYwODM1MDEyfQ.b9NrXQt1014Yb0eNATpsyuO2AzsHjxsSEelt6popXC0";

  Map<String, String> get headers => {
    "Content-Type": "application/json",
    "Authorization": "Bearer $token",
  };

  /// TYPE
  String type = "aarti";

  /// DATA
  List gods = [];
  List aartis = [];

  String? selectedGodId;
  String? selectedAartiId;
  DateTime? selectedDate;

  /// TEXT
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  /// STATE
  bool loading = false;
  bool loadingGod = false;
  bool loadingAarti = false;

  void showMsg(String msg) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  /// ================= INIT =================
  @override
  void initState() {
    super.initState();

    NotificationService.setToken(token); // 🔥 IMPORTANT

    fetchGods();
  }

  /// ================= FETCH GOD =================
  Future fetchGods() async {
    setState(() => loadingGod = true);

    try {
      final res = await http.get(
        Uri.parse("$baseUrl/god/all-god-data"),
        headers: headers,
      );

      final data = jsonDecode(res.body);
      gods = data["data"] ?? [];
    } catch (e) {
      showMsg("Failed to load gods");
    }

    setState(() => loadingGod = false);
  }

  /// ================= FETCH AARTI =================
  Future fetchAarti(String godId) async {
    setState(() => loadingAarti = true);

    try {
      final res = await http.post(
        Uri.parse("$baseUrl/chalisaaarti/god-wise-chalisa-aarti"),
        headers: headers,
        body: jsonEncode({
          "godId": godId,
          "lang": "en"
        }),
      );

      final data = jsonDecode(res.body);
      aartis = data["data"] ?? [];
    } catch (e) {
      showMsg("Failed to load aarti");
    }

    setState(() => loadingAarti = false);
  }

  /// ================= SEND =================
  Future sendNotification() async {

    if (type == "aarti" && selectedAartiId == null) {
      return showMsg("Select Aarti");
    }

    if (type == "calendar" && selectedDate == null) {
      return showMsg("Select Date");
    }

    if (titleController.text.isEmpty ||
        bodyController.text.isEmpty) {
      return showMsg("Enter title & message");
    }

    setState(() => loading = true);

    try {
      Map res;

      if (type == "aarti") {
        res = await NotificationService.sendAarti(
          aartiId: selectedAartiId!,
          title: titleController.text,
          body: bodyController.text,
        );
      }
      else if (type == "calendar") {
        res = await NotificationService.sendCalendar(
          date: selectedDate!.toIso8601String().split("T")[0],
          title: titleController.text,
          body: bodyController.text,
        );
      }
      else if (type == "day") {
        res = await NotificationService.sendDayWise(
          title: titleController.text,
          body: bodyController.text,
        );
      }
      else {
        res = await NotificationService.sendCustom(
          title: titleController.text,
          body: bodyController.text,
        );
      }

      if (res["success"] == true) {
        showMsg(res["message"] ?? "Notification Sent ✅");
      } else {
        showMsg(res["message"] ?? "Failed ❌");
      }

      titleController.clear();
      bodyController.clear();

    } catch (e) {
      showMsg("Error sending notification");
    }

    setState(() => loading = false);
  }

  /// ================= UI =================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🔔 Notification CMS")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            /// TYPE
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: DropdownButton<String>(
                  value: type,
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(value: "aarti", child: Text("Aarti")),
                    DropdownMenuItem(value: "calendar", child: Text("Calendar")),
                    DropdownMenuItem(value: "day", child: Text("Day Wise")),
                    DropdownMenuItem(value: "custom", child: Text("Custom")),
                  ],
                  onChanged: (val) {
                    type = val!;
                    setState(() {});
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// AARTI UI
            if (type == "aarti")
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [

                      DropdownButton<String>(
                        value: selectedGodId,
                        hint: Text("Select God"),
                        isExpanded: true,
                        items: gods.map<DropdownMenuItem<String>>((g) {
                          return DropdownMenuItem(
                            value: g["_id"],
                            child: Text(g["god_name"]),
                          );
                        }).toList(),
                        onChanged: (val) {
                          selectedGodId = val;
                          selectedAartiId = null;
                          fetchAarti(val!);
                          setState(() {});
                        },
                      ),

                      const SizedBox(height: 10),

                      loadingAarti
                          ? const CircularProgressIndicator()
                          : DropdownButton<String>(
                        value: selectedAartiId,
                        hint: Text("Select Aarti"),
                        isExpanded: true,
                        items: aartis.map<DropdownMenuItem<String>>((a) {
                          return DropdownMenuItem(
                            value: a["_id"],
                            child: Text(a["title"]),
                          );
                        }).toList(),
                        onChanged: (val) {
                          selectedAartiId = val;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ),

            /// CALENDAR
            if (type == "calendar")
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ElevatedButton(
                    onPressed: () async {
                      final picked = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                        initialDate: DateTime.now(),
                      );

                      if (picked != null) {
                        selectedDate = picked;
                        setState(() {});
                      }
                    },
                    child: Text(
                      selectedDate == null
                          ? "Select Date"
                          : selectedDate.toString().split(" ")[0],
                    ),
                  ),
                ),
              ),

            /// TEXT INPUT
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(labelText: "Title"),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: bodyController,
                      decoration: const InputDecoration(labelText: "Message"),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// BUTTON
            ElevatedButton(
              onPressed: loading ? null : sendNotification,
              child: Text(loading ? "Sending..." : "🚀 Send Notification"),
            ),

            if (loading)
              const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}