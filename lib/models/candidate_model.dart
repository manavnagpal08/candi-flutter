class CandidateModel {
  final String id;
  final String name;
  final double skillMatchScore;
  final double experienceScore;
  final double finalScore;
  final String recommendation;
  final String resumeSummary;

  CandidateModel({
    required this.id,
    required this.name,
    required this.skillMatchScore,
    required this.experienceScore,
    required this.finalScore,
    required this.recommendation,
    required this.resumeSummary,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'skillMatchScore': skillMatchScore,
      'experienceScore': experienceScore,
      'finalScore': finalScore,
      'recommendation': recommendation,
      'resumeSummary': resumeSummary,
    };
  }

  factory CandidateModel.fromMap(Map<String, dynamic> map) {
    return CandidateModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      skillMatchScore: (map['skillMatchScore'] ?? 0.0).toDouble(),
      experienceScore: (map['experienceScore'] ?? 0.0).toDouble(),
      finalScore: (map['finalScore'] ?? 0.0).toDouble(),
      recommendation: map['recommendation'] ?? '',
      resumeSummary: map['resumeSummary'] ?? '',
    );
  }
}
