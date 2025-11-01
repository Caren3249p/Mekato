import '../mock/mock_users.dart';
import '../modules/user.dart';

class UserService {
  User? getUserById(int id) {
    return mockUsers.firstWhere((u) => u.id == id, orElse: () => throw Exception("Usuario no encontrado"));
  }

  void updateUser(User updated) {
    int index = mockUsers.indexWhere((u) => u.id == updated.id);
    if (index != -1) mockUsers[index] = updated;
  }
}
