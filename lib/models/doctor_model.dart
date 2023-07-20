class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReview;
  final String profile;

  DoctorModel(
    this.name,
    this.position,
    this.averageReview,
    this.totalReview,
    this.profile,
  );
}

List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    "Luke Holland",
    "General Practitioner",
    4,
    120,
    'assets/doctor_1.jpg',
  ),
  DoctorModel(
    "Sophie Harmon",
    "General Practitioner",
    3,
    111,
    'assets/doctor_2.jpg',
  ),
  DoctorModel(
    "Louise Reid ",
    "General Practitioner",
    5,
    152,
    'assets/doctor_3.jpg',
  ),
];
