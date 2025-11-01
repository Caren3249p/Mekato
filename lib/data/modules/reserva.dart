class Reserva {
  final int id;
  final int userId;
  final String fecha;
  final String hora;
  final int personas;
  String estado;

  Reserva({
    required this.id,
    required this.userId,
    required this.fecha,
    required this.hora,
    required this.personas,
    this.estado = 'pendiente',
  });
}
