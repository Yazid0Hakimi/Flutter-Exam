// adherent.dart
class Adherent {
  final String nom;
  final String prenom;
  final String? telephone; // Make telephone nullable
  final String coverUrl;
  final String email;

  Adherent({
    required this.nom,
    required this.prenom,
    this.telephone, // Mark telephone as optional
    required this.coverUrl,
    required this.email,
  });
}
