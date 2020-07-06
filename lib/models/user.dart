class User {
  final String name;
  final String username;
  final String bio;

  User(this.name, this.username, this.bio);

  @override
  String toString() {
    return 'User{name: $name, username: $username, bio: $bio}';
  }
}
