import '../mock/mock_users.dart';
import '../modules/user.dart';

class AuthService {
  User? login(String email, String password) {
    try {
      return mockUsers.firstWhere(
        (user) => user.email == email && user.password == password,
      );
    } catch (e) {
      return null;
    }
  }
}
