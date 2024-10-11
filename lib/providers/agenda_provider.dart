import 'package:flutter/material.dart';
import 'package:todo_app/models/tarea.dart';

class AgendaProvider extends ChangeNotifier {
  final List<Tarea> _tareas = [];

  List<Tarea> get tareas => _tareas;

  void agregarTarea(Tarea tarea) {
    _tareas.add(tarea);
    notifyListeners();
  }

  void eliminarTarea(Tarea tarea) {
    final index = _tareas.indexOf(tarea);
    _tareas.removeAt(index);
    notifyListeners();
  }
}
