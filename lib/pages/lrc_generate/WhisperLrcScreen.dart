import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:just_audio/just_audio.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:share_plus/share_plus.dart';

class WhisperLrcScreen extends StatefulWidget {
  @override
  _WhisperLrcScreenState createState() => _WhisperLrcScreenState();
}

class _WhisperLrcScreenState extends State<WhisperLrcScreen> {
  final AudioPlayer _player = AudioPlayer();
  List<LyricLine> lyrics = [];
  int currentIndex = 0;
  bool isProcessing = false;

  final String openAIKey ="";

  double _speed = 1.0;

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }


  // Copy asset to temp file
  Future<File> _copyAssetToTemp(String assetPath) async {
    final bytes = await rootBundle.load(assetPath);
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/temp_audio.mp3');
    await file.writeAsBytes(bytes.buffer.asUint8List());
    return file;
  }

  // Call OpenAI Whisper API
  Future<void> _transcribeAudio(File audioFile) async {
    setState(() {
      isProcessing = true;
      lyrics.clear();
    });

    final uri = Uri.parse('https://api.openai.com/v1/audio/transcriptions');
    final request = http.MultipartRequest('POST', uri)
      ..headers['Authorization'] = 'Bearer $openAIKey'
      ..fields['model'] = 'whisper-1'
      ..fields['language'] = 'hi'
      ..fields['response_format'] = 'verbose_json' // for timestamps
      ..files.add(await http.MultipartFile.fromPath('file', audioFile.path));

    final streamedResponse = await request.send();
    final responseString = await streamedResponse.stream.bytesToString();

    final data = jsonDecode(responseString);
    final segments = data['segments'] ?? [];

    setState(() {
      lyrics = segments.map<LyricLine>((seg) {
        return LyricLine(
          text: seg['text'],
          start: Duration(milliseconds: (seg['start'] * 1000).round()),
          end: Duration(milliseconds: (seg['end'] * 1000).round()),
        );
      }).toList();
      isProcessing = false;
    });

    // Auto play audio
    await _player.setFilePath(audioFile.path);
    await _player.setSpeed(_speed);
    _player.play();

    // Listen for highlighting
    _player.positionStream.listen((pos) {
      for (int i = 0; i < lyrics.length; i++) {
        if (pos >= lyrics[i].start && pos < lyrics[i].end) {
          setState(() {
            currentIndex = i;
          });
          break;
        }
      }
    });
  }

  // Generate LRC file
  Future<void> _generateLrcFile() async {
    if (lyrics.isEmpty) return;

    String lrcContent = '';
    for (var line in lyrics) {
      final minutes = line.start.inMinutes.toString().padLeft(2, '0');
      final seconds = (line.start.inSeconds % 60).toString().padLeft(2, '0');
      final milliseconds = (line.start.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0');
      lrcContent += '[$minutes:$seconds.$milliseconds]${line.text}\n';
    }

    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/auto_lyrics.lrc');
    await file.writeAsString(lrcContent);

    saveToDownloads(file);
    await Share.shareXFiles([XFile(file.path)], text: 'Here is my LRC file');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('LRC saved at: ${file.path}')),
    );
  }

  Future<void> saveToDownloads(File file) async {
    final dir = Directory('/storage/emulated/0/Download'); // External storage
    final newFile = File('${dir.path}/auto_lyrics.lrc');
    await file.copy(newFile.path);
  }

  // Toggle play/pause
  void _togglePlay() {
    if (_player.playing) {
      _player.pause();
    } else {
      _player.play();
    }
    setState(() {});
  }

  // Set playback speed
  void _setSpeed(double speed) async {
    _speed = speed;
    await _player.setSpeed(speed);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Whisper Auto LRC')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Load & Transcribe Button
            ElevatedButton(
              onPressed: isProcessing
                  ? null
                  : () async {
                final file = await _copyAssetToTemp('');
                await _transcribeAudio(file);
              },
              child: Text(isProcessing ? 'Processing...' : 'Load & Transcribe Audio'),
            ),

            SizedBox(height: 16),

            // Media Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(_player.playing ? Icons.pause_circle_filled : Icons.play_circle_fill),
                  iconSize: 48,
                  onPressed: _togglePlay,
                ),
                SizedBox(width: 20),
                DropdownButton<double>(
                  value: _speed,
                  items: [
                    DropdownMenuItem(child: Text("1x"), value: 1.0),
                    DropdownMenuItem(child: Text("1.5x"), value: 1.5),
                    DropdownMenuItem(child: Text("2x"), value: 2.0),
                  ],
                  onChanged: (val) {
                    if (val != null) _setSpeed(val);
                  },
                ),
              ],
            ),

            // Progress bar
            StreamBuilder<Duration>(
              stream: _player.positionStream,
              builder: (context, snapshot) {
                final pos = snapshot.data ?? Duration.zero;
                final total = _player.duration ?? Duration(seconds: 1);
                return Column(
                  children: [
                    LinearProgressIndicator(
                      value: pos.inMilliseconds / total.inMilliseconds,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "${pos.toString().split('.').first} / ${total.toString().split('.').first}",
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 16),

            // Lyrics List
            Expanded(
              child: ListView.builder(
                itemCount: lyrics.length,
                itemBuilder: (context, index) {
                  final line = lyrics[index];
                  final isActive = index == currentIndex;
                  return Container(
                    color: isActive ? Colors.blueAccent : null,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      line.text,
                      style: TextStyle(
                        color: isActive ? Colors.white : Colors.black,
                        fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  );
                },
              ),
            ),

            ElevatedButton(
              onPressed: _generateLrcFile,
              child: Text('Generate LRC File'),
            ),
          ],
        ),
      ),
    );
  }
}

class LyricLine {
  final String text;
  final Duration start;
  final Duration end;

  LyricLine({required this.text, required this.start, required this.end});
}