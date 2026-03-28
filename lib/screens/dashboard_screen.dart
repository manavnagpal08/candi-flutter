import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Recruiter Dashboard',
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded, color: Colors.black54),
          ),
          const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.deepPurple,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=recruiter'),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _buildStatsGrid(),
            const SizedBox(height: 32),
            _buildCandidateSectionHeader(),
            const SizedBox(height: 16),
            _buildCandidateCard(
              name: 'John Doe',
              position: 'Senior Software Engineer',
              score: 92,
              status: 'Highly Recommended',
            ),
            _buildCandidateCard(
              name: 'Sia Miller',
              position: 'Product Designer',
              score: 88,
              status: 'Good Fit',
            ),
            _buildCandidateCard(
              name: 'Marcus Gray',
              position: 'Project Manager',
              score: 75,
              status: 'Further Review',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        label: const Text('Create Campaign'),
        icon: const Icon(Icons.add_rounded),
      ),
    );
  }

  Widget _buildStatsGrid() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: [
        _buildStatCard('Total Applicants', '1,248', Icons.people_outline_rounded, Colors.blue),
        _buildStatCard('Shortlisted', '245', Icons.verified_user_outlined, Colors.green),
        _buildStatCard('In Pipeline', '84', Icons.pending_actions_rounded, Colors.orange),
        _buildStatCard('Hired', '12', Icons.task_alt_rounded, Colors.purple),
      ],
    );
  }

  Widget _buildCandidateSectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Recently Analyzed Candidates',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black87),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View All', style: TextStyle(color: Colors.deepPurple)),
        ),
      ],
    );
  }

  Widget _buildStatCard(String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: color, size: 28),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.black87),
              ),
              Text(
                label,
                style: TextStyle(fontSize: 13, color: Colors.grey[500], fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCandidateCard({
    required String name,
    required String position,
    required int score,
    required String status,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.deepPurple[100],
            child: Text(
              name[0],
              style: const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.black87),
                ),
                Text(
                  position,
                  style: TextStyle(fontSize: 13, color: Colors.grey[500], fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Score: $score%',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: score >= 85 ? Colors.green : (score >= 70 ? Colors.orange : Colors.red),
                ),
              ),
              Text(
                status,
                style: TextStyle(fontSize: 12, color: Colors.grey[400], fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
