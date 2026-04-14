import 'package:flutter/material.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Premium Benefits",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Unlock everything you need to boost your productivity.",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 24),
          _buildBenefitCard(
            "Unlimited Storage",
            "Store as many files as you want without worrying.",
            Icons.cloud_done,
          ),
          _buildBenefitCard(
            "Priority Support",
            "Get fast answers from our technical team 24/7.",
            Icons.support_agent,
          ),
          _buildBenefitCard(
            "Advanced Security",
            "End-to-end encryption to keep your data safe.",
            Icons.security,
          ),
          _buildBenefitCard(
            "No Ads Experience",
            "Enjoy a seamless experience without any ads.",
            Icons.block,
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitCard(String title, String desc, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2C3E50), Color(0xFF1A1A2E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: Colors.blueAccent),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(desc, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// fix: optimized rendering logic iteration 3

// style: optimized colors iteration 7
