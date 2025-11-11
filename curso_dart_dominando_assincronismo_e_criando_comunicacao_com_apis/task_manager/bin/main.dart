import 'dart:async';

import 'package:main/models/task.dart';
import 'package:main/models/task_manager.dart';

void main() {
  TaskManager taskManager = TaskManager();
  StreamSubscription subscription = taskManager.stream.listen((message) {
    print("Notificação: $message");
  });

  // Adiciona as tarefas
  taskManager.addTask(
    Task(
      id: '1',
      title: 'Estudar Dart',
      description: 'Completar o módulo de fundamentos de Dart',
      isCompleted: false,
    ),
  );
  taskManager.addTask(
    Task(
      id: '2',
      title: 'Fazer compras',
      description: 'Comprar frutas e legumes no mercado',
      isCompleted: false,
    ),
  );
  taskManager.addTask(
    Task(
      id: '3',
      title: 'Ir à academia',
      description: 'Treino de musculação às 18h',
      isCompleted: false,
    ),
  );

  // Visualiza todas as tarefas
  List<Task> allTasks = taskManager.getAll();
  print('--- Todas as Tarefas ---');
  for (Task task in allTasks) {
    print(
      'ID: ${task.id}, Título: ${task.title}, Concluída: ${task.isCompleted}',
    );
  }

  // Marca a tarefa 1 como concluída
  taskManager.toggleTaskStatus('1');

  // Visualiza a tarefa por ID
  Task taskById = taskManager.getById('1');
  print('--- Tarefa Buscada por ID ---');
  print(
    'ID: ${taskById.id}, Título: ${taskById.title}, Concluída: ${taskById.isCompleted}',
  );

  // Remove uma tarefa
  taskManager.delete('2');

  // Visualiza todas as tarefas após remoção
  allTasks = taskManager.getAll();
  print('--- Tarefas Após Remoção ---');
  for (Task task in allTasks) {
    print(
      'ID: ${task.id}, Título: ${task.title}, Concluída: ${task.isCompleted}',
    );
  }
}
