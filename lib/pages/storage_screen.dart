import 'package:flutter/material.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          "Recent Files",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildFileItem(Icons.image, "sakil_pic.jpg", "2.4 MB • 2 days ago", Colors.blue),
        _buildFileItem(Icons.picture_as_pdf, "project_requirements.pdf", "1.2 MB • Last week", Colors.redAccent),
        _buildFileItem(Icons.video_file, "flutter_tutorial.mp4", "150 MB • 2 weeks ago", Colors.orange),
        _buildFileItem(Icons.insert_drive_file, "resume_final.docx", "800 KB • 1 month ago", Colors.green),
        _buildFileItem(Icons.folder, "Projects_2026", "1.2 GB • 2 months ago", Colors.teal),
        _buildFileItem(Icons.audio_file, "voice_note.m4a", "3 MB • 1 month ago", Colors.purple),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            "Showing top 5 largest files",
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        )
      ],
    );
  }

  Widget _buildFileItem(IconData icon, String name, String subtitle, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        trailing: const Icon(Icons.more_vert, color: Colors.grey),
      ),
    );
  }
}

// style: optimized margins iteration 2

// chore: optimized text styles iteration 6

// refactor: optimized margins iteration 10

// perf: optimized text styles iteration 14

// fix: optimized margins iteration 18

// style: optimized text styles iteration 22

// chore: optimized margins iteration 26
