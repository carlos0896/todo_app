import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tarea.dart';
import '../providers/agenda_provider.dart';

class EliminarTareaDialog extends StatelessWidget {
  const EliminarTareaDialog({
    super.key,
    required this.tarea,
  });

  final Tarea tarea;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Eliminar tarea',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '¿Estás seguro de eliminar la tarea "${tarea.titulo}"?',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {
                    Provider.of<AgendaProvider>(context, listen: false)
                        .eliminarTarea(tarea);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Eliminar',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
