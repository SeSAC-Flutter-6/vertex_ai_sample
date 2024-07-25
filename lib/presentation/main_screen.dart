import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertexai_sample/presentation/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('VertexAI'),
      ),
      body: Column(
        children: [
          Expanded(
            child: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.errorMessage.isNotEmpty
                    ? Text(state.errorMessage)
                    : Text(
                        state.recipe.toString(),
                        style: const TextStyle(fontSize: 40),
                      ),
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
              )),
              ElevatedButton(
                onPressed: () {
                  viewModel.requestRecipeByText(_textController.text);
                },
                child: const Text('전송'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
