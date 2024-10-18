import 'package:flutter/material.dart';
import 'package:todo_app/models/tarea.dart';

class AgendaProvider extends ChangeNotifier {
  final List<Tarea> _tareas = [
    // TODO: Temporal para probar haciendo y hechas, eliminar cuando sea dinámico
    Tarea(
      titulo: 'ejemplo 1',
      fechaCreacion: DateTime.now(),
    ),
    Tarea(
      titulo: 'ejemplo 2',
      fechaCreacion: DateTime.now(),
    ),
    Tarea(
      titulo: 'ejemplo 3',
      fechaCreacion: DateTime.now(),
      tipoTarea: TipoTarea.haciendo,
    ),
    Tarea(
      titulo: 'ejemplo 4',
      fechaCreacion: DateTime.now(),
      tipoTarea: TipoTarea.haciendo,
    ),
    Tarea(
      titulo: 'ejemplo 5',
      fechaCreacion: DateTime.now(),
      tipoTarea: TipoTarea.hecha,
    ),
    Tarea(
      titulo: 'ejemplo 5',
      fechaCreacion: DateTime.now(),
      tipoTarea: TipoTarea.hecha,
    ),
  ];
  TipoTarea _tipoTareaSeleccionada = TipoTarea.porHacer;

  List<Tarea> get tareas => _tareas;
  TipoTarea get tipoTareaSeleccionada => _tipoTareaSeleccionada;

  void agregarTarea(Tarea tarea) {
    _tareas.add(tarea);
    notifyListeners();
  }

  void eliminarTarea(Tarea tarea) {
    final index = _tareas.indexOf(tarea);
    _tareas.removeAt(index);
    notifyListeners();
  }

  void editarTarea(String nuevoNombreTarea, Tarea tareaActual) {
    final index = _tareas.indexOf(tareaActual);
    _tareas[index] = _tareas[index].copyWith(titulo: nuevoNombreTarea);
    notifyListeners();
  }

  void cambiarTipoTareaSeleccionada(TipoTarea tipoTarea) {
    _tipoTareaSeleccionada = tipoTarea;
    notifyListeners();
  }
}
