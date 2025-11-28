import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:assistive_tech/data/repositories/worksheet_repository.dart';
import 'package:assistive_tech/data/local/database.dart';

class WorksheetListScreen extends ConsumerWidget {
  const WorksheetListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final worksheetRepository = ref.watch(worksheetRepositoryProvider);
    
    // We need a provider to watch the stream. 
    // Since we didn't define one in the repository file (yet), we can define a local one or just use a StreamBuilder.
    // For cleaner code, let's use a StreamBuilder for now, or better, define a provider.
    // Let's define a Future/Stream provider for the list.
    // Actually, let's just use StreamBuilder for simplicity in this step, 
    // or better yet, let's add a provider in the build method or use a FutureProvider?
    // No, let's do it the Riverpod way.
    
    final worksheetsAsyncValue = ref.watch(worksheetsStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Worksheets'),
      ),
      body: worksheetsAsyncValue.when(
        data: (worksheets) {
          if (worksheets.isEmpty) {
            return const Center(child: Text('No worksheets yet. Create one!'));
          }
          return ListView.builder(
            itemCount: worksheets.length,
            itemBuilder: (context, index) {
              final worksheet = worksheets[index];
              return ListTile(
                title: Text(worksheet.title),
                subtitle: Text(worksheet.createdAt.toString()),
                onTap: () {
                  // TODO: Navigate to detail screen
                  print('Tapped on ${worksheet.id}');
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final id = await worksheetRepository.createWorksheet('New Worksheet ${DateTime.now().second}');
          print('Created worksheet: $id');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

final worksheetsStreamProvider = StreamProvider<List<Worksheet>>((ref) {
  final repository = ref.watch(worksheetRepositoryProvider);
  return repository.watchAllWorksheets();
});
