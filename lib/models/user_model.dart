class User {
  final String userId;
  final String name;
  final String email;
  final String phoneNumber;
  final String userType;
  // final Map<String, String> address;
  final List<int> ratings;
  final double averageRating;

  User({
    required this.userId,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.userType,
    // required this.address,
    this.ratings = const [],
    this.averageRating = 0.0,
  });

  // Convert a User object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'userType': userType,
      // 'address': address,
      'ratings': ratings,
      'averageRating': averageRating,
    };
  }

  // Convert a Map object into a User object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId'],
      name: map['name'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      userType: map['userType'],
      // address: Map<String, String>.from(map['address']),
      ratings: List<int>.from(map['ratings']),
      averageRating: map['averageRating'].toDouble(),
    );
  }
}
