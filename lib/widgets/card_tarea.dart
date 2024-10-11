import 'package:flutter/material.dart';

import '../models/tarea.dart';
import '../utils/formatter_util.dart';
import 'eliminar_tarea_dialog.dart';

class CardTarea extends StatelessWidget {
  const CardTarea({
    super.key,
    required this.tarea,
  });

  final Tarea tarea;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tarea.titulo),
                  Text(
                    'Creado: ${FormatterUtil.fechaConHora(tarea.fechaCreacion)}',
                  ),
                ],
              ),
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.edit),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return EliminarTareaDialog(tarea: tarea);
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.delete),
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
