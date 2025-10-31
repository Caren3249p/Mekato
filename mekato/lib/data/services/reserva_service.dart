import '../mock/mock_reservas.dart';
import '../modules/reserva.dart';

class ReservaService {
  List<Reserva> getReservasByUser(int userId) {
    return mockReservas.where((r) => r.userId == userId).toList();
  }

  void addReserva(Reserva reserva) {
    mockReservas.add(reserva);
  }

  void updateReserva(Reserva updated) {
    int index = mockReservas.indexWhere((r) => r.id == updated.id);
    if (index != -1) mockReservas[index] = updated;
  }

  void deleteReserva(int id) {
    mockReservas.removeWhere((r) => r.id == id);
  }
}
