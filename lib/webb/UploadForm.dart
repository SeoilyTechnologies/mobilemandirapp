import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class UploadForm extends StatefulWidget {
  const UploadForm({super.key});

  @override
  State<UploadForm> createState() => _UploadFormState();
}

class _UploadFormState extends State<UploadForm> {
  // late quill.QuillController quillController;
  final FocusNode _editorFocus = FocusNode();

  final _formKey = GlobalKey<FormState>();
  http.Client? _client;
  bool cancelled = false;

  // ---------- TEXT CONTROLLERS ----------
  final typeCtrl = TextEditingController(text: "aarti");
  final godCtrl = TextEditingController();
  final audioDurationCtrl = TextEditingController();
  final titleHiCtrl = TextEditingController();
  final titleEnCtrl = TextEditingController();
  final testLyricsCtrl = TextEditingController();
  final lyricsJsonCtrl = TextEditingController();

  // ---------- FILES ----------
  PlatformFile? audio;
  PlatformFile? thumbHi;
  PlatformFile? thumbEn;
  PlatformFile? bannerHi;
  PlatformFile? bannerEn;
  PlatformFile? lyricBannerHi;
  PlatformFile? lyricBannerEn;

  bool loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //quillController = quill.QuillController.basic();
  }

  Future<void> pickFile(
    Function(PlatformFile) onPick, {
    FileType type = FileType.any,
  }) async {
    final res = await FilePicker.pickFiles(withData: true, type: type);
    if (res != null) {
      onPick(res.files.first);
      setState(() {});
    }
  }

  Widget fileBtn(String label, PlatformFile? file, VoidCallback onTap) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(file == null ? label : file.name),
    );
  }

  Future<void> upload() async {
    //  if (!_formKey.currentState!.validate()) return;

    setState(() {
      loading = true;
      cancelled = false;
    });

    _client = http.Client();

    try {
      final req = http.MultipartRequest(
        "POST",
        Uri.parse(
          "https://mobilemandirapp.com/api/chalisaaarti/upload-chalisa-aarti",
        ),
      );

      // HEADERS (TOKEN)
      req.headers['Authorization'] =
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY5NmRjNGNmYTUyMzEwN2U1YWJkMjRlNiIsInBob25lIjoiODY5OTEwNTM2MyIsImVtYWlsIjpudWxsLCJ0b2tlblZlcnNpb24iOjMsImlhdCI6MTc2ODkwNTYwMCwiZXhwIjoxNzY5NTEwNDAwfQ.IEsz0BjOlGH8dAcMk0yAkR1dtUwd76P1FdqE70UJb48';

      // ---------- TEXT ----------
      req.fields['type'] = typeCtrl.text.trim();
      req.fields['god'] = godCtrl.text.trim();
      req.fields['audio_duration'] = audioDurationCtrl.text.trim();

      req.fields['title'] = jsonEncode({
        "hi": titleHiCtrl.text.trim(),
        "en": titleEnCtrl.text.trim(),
      });

      req.fields['testLyrics'] = testLyricsCtrl.text.trim();
      req.fields['lyrics'] = lyricsJsonCtrl.text.trim();

      // ---------- FILES ----------
      void addFile(String key, PlatformFile? f) {
        if (f != null) {
          req.files.add(
            http.MultipartFile.fromBytes(key, f.bytes!, filename: f.name),
          );
        }
      }

      addFile("audioAsset", audio);
      addFile("thumbnail_hi", thumbHi);
      addFile("thumbnail_en", thumbEn);
      addFile("banner_hi", bannerHi);
      addFile("banner_en", bannerEn);
      addFile("lyric_banner_hi", lyricBannerHi);
      addFile("lyric_banner_en", lyricBannerEn);

      final streamedRes = await _client!.send(req);
      final body = await streamedRes.stream.bytesToString();

      if (!cancelled) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(streamedRes.statusCode == 201 ? "SUCCESS" : body),
          ),
        );
      }
    } catch (e) {
      if (!cancelled) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Upload failed")));
      }
    } finally {
      _client?.close();
      _client = null;
      setState(() => loading = false);
    }
  }

  // Future<void> upload() async {
  //   if (!_formKey.currentState!.validate()) return;
  //   if (audio == null) {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("Audio is required")));
  //     return;
  //   }
  //
  //   setState(() {
  //     loading = true;
  //     cancelled = false;
  //   });
  //
  //   _client = http.Client();
  //
  //   try {
  //     final req = http.MultipartRequest(
  //       "POST",
  //       Uri.parse("https://mobilemandirapp.com/api/chalisaaarti/upload-chalisa-aarti"),
  //     );
  //
  //     // ✅ HEADERS (TOKEN)
  //     req.headers['Authorization'] = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY5NmRjNGNmYTUyMzEwN2U1YWJkMjRlNiIsInBob25lIjoiODY5OTEwNTM2MyIsImVtYWlsIjpudWxsLCJ0b2tlblZlcnNpb24iOjMsImlhdCI6MTc2ODkwNTYwMCwiZXhwIjoxNzY5NTEwNDAwfQ.IEsz0BjOlGH8dAcMk0yAkR1dtUwd76P1FdqE70UJb48';
  //
  //
  //
  //     // ---------- TEXT ----------
  //     req.fields['type'] = typeCtrl.text.trim();
  //     req.fields['god'] = godCtrl.text.trim();
  //     req.fields['audio_duration'] = audioDurationCtrl.text.trim();
  //
  //     req.fields['title'] = jsonEncode({
  //       "hi": titleHiCtrl.text.trim(),
  //       "en": titleEnCtrl.text.trim(),
  //     });
  //
  //     req.fields['testLyrics'] = testLyricsCtrl.text.trim();
  //     req.fields['lyrics'] = lyricsJsonCtrl.text.trim();
  //
  //     // ---------- FILES ----------
  //     void addFile(String key, PlatformFile? f) {
  //       if (f != null) {
  //         req.files.add(http.MultipartFile.fromBytes(
  //           key,
  //           f.bytes!,
  //           filename: f.name,
  //         ));
  //       }
  //     }
  //
  //     addFile("audioAsset", audio);
  //     addFile("thumbnail_hi", thumbHi);
  //     addFile("thumbnail_en", thumbEn);
  //     addFile("banner_hi", bannerHi);
  //     addFile("banner_en", bannerEn);
  //     addFile("lyric_banner_hi", lyricBannerHi);
  //     addFile("lyric_banner_en", lyricBannerEn);
  //
  //     final streamedRes = await _client!.send(req);
  //     final body = await streamedRes.stream.bytesToString();
  //
  //     if (!cancelled) {
  //
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(
  //             streamedRes.statusCode == 201 ? "SUCCESS" : body,
  //           ),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     print(e);
  //     if (!cancelled) {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: Text("Upload failed")));
  //     }
  //   } finally {
  //     _client?.close();
  //     _client = null;
  //     setState(() => loading = false);
  //   }
  // }

  InputDecoration deco(String label) =>
      InputDecoration(labelText: label, border: OutlineInputBorder());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Aarti / Chalisa (Web)")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(controller: typeCtrl, decoration: deco("Type")),
              const SizedBox(height: 10),
              TextFormField(controller: godCtrl, decoration: deco("God ID")),
              const SizedBox(height: 10),
              TextFormField(
                controller: audioDurationCtrl,
                decoration: deco("Audio Duration"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: titleHiCtrl,
                decoration: deco("Title (Hindi)"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: titleEnCtrl,
                decoration: deco("Title (English)"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: testLyricsCtrl,
                decoration: deco("Plain Lyrics (HTML/Text)"),
                maxLines: 4,
              ),

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       "Formatted Lyrics (HTML Editor)",
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     ),
              //     const SizedBox(height: 8),
              //
              //     QuillToolbar(
              //       configurations: QuillToolbarConfigurations(
              //         controller: quillController,
              //       ),
              //     ),
              //
              //     const SizedBox(height: 8),
              //
              //     Container(
              //       height: 300,
              //       decoration: BoxDecoration(
              //         border: Border.all(color: Colors.grey),
              //         borderRadius: BorderRadius.circular(6),
              //       ),
              //       child: QuillEditor(
              //         controller: quillController,
              //         focusNode: _editorFocus,
              //         scrollController: ScrollController(),
              //         // configurations: const QuillEditorConfigurations(
              //         //   readOnly: false,
              //         // ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 10),
              TextFormField(
                controller: lyricsJsonCtrl,
                decoration: deco("Lyrics JSON"),
                maxLines: 10,
                validator: (v) {
                  try {
                    jsonDecode(v!);
                    return null;
                  } catch (_) {
                    return "Invalid JSON";
                  }
                },
              ),
              const SizedBox(height: 20),

              // ---------- FILE PICKERS ----------
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  fileBtn(
                    "Pick Audio*",
                    audio,
                    () => pickFile((f) => audio = f),
                  ),
                  fileBtn(
                    "Thumb HI",
                    thumbHi,
                    () => pickFile((f) => thumbHi = f),
                  ),
                  fileBtn(
                    "Thumb EN",
                    thumbEn,
                    () => pickFile((f) => thumbEn = f),
                  ),
                  fileBtn(
                    "Banner HI",
                    bannerHi,
                    () => pickFile((f) => bannerHi = f),
                  ),
                  fileBtn(
                    "Banner EN",
                    bannerEn,
                    () => pickFile((f) => bannerEn = f),
                  ),
                  fileBtn(
                    "Lyric Banner HI",
                    lyricBannerHi,
                    () => pickFile((f) => lyricBannerHi = f),
                  ),
                  fileBtn(
                    "Lyric Banner EN",
                    lyricBannerEn,
                    () => pickFile((f) => lyricBannerEn = f),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: loading ? null : upload,
                child: loading
                    ? const CircularProgressIndicator()
                    : Text("UPLOAD"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
