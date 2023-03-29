class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Hardi Prayoga",
      username: "hardi",
      email: "2006011@itg.ac.id",
      profilePhoto:
          "https://www.rancahpost.com/wp-content/uploads/2022/01/Cara-Mengunci-Foto-Profil-FB.png",
      phoneNumber: "089630028634",
    );
  }
}