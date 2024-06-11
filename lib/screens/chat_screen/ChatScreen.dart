import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/screens/details/details_screen.dart';
import '../../models/Product.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  bool _isLoading = false;

  Future<void> _sendMessage(String message) async {
    setState(() {
      _messages.add({"role": "user", "content": message});
      _isLoading = true;
    });

    final response = await http.post(
      Uri.parse('https://api.deepseek.com/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer sk-b8b38407fb4849628baa24ba7fc8b42a' // Replace with your actual API key
      },
      body: json.encode({
        'model': 'deepseek-chat',
        'messages': [
          {"role": "system", "content": "Você é um vendedor da Magazine Rodrigues e está aqui para vender produtos e ajudar o usuário a escolher a melhor opção possível. Aqui está a lista de produtos: ${demoProducts.map((product) => product.title).join(', ')}"},
          ..._messages,
          {"role": "user", "content": message}
        ],
        'stream': false,
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.bodyBytes));
      setState(() {
        _messages.add({"role": "assistant", "content": data['choices'][0]['message']['content']});
        _isLoading = false;
      });
    } else {
      setState(() {
        _messages.add({"role": "assistant", "content": "Erro: ${response.reasonPhrase}"});
        _isLoading = false;
      });
    }
  }

  // Navegar para a página de detalhes do produto
  void _navigateToProduct(BuildContext context, String productName) {
    final product = demoProducts.firstWhere((product) => product.title == productName);
    Navigator.pushNamed(
      context,
      DetailsScreen.routeName,
      arguments: ProductDetailsArguments(product: product),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot Vendedor'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return _buildMessage(context, message);
              },
            ),
          ),
          if (_isLoading)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Digite sua mensagem...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(BuildContext context, Map<String, String> message) {
    final messageContent = message['content']!;
    final messageParts = messageContent.split(' ');
    final List<InlineSpan> textSpans = [];

    for (final part in messageParts) {
      if (demoProducts.any((product) => product.title == part)) {
        textSpans.add(
          WidgetSpan(
            child: GestureDetector(
              onTap: () => _navigateToProduct(context, part),
              child: Text(
                part,
                style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ),
        );
        textSpans.add(const TextSpan(text: ' '));
      } else {
        textSpans.add(TextSpan(text: '$part '));
      }
    }

    return ListTile(
      title: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: textSpans,
        ),
      ),
      subtitle: Text(message['role']!),
      tileColor: message['role'] == 'user' ? Colors.blue[50] : Colors.green[50],
    );
  }
}
