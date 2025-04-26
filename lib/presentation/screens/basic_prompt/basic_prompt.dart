import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';

final user = types.User(
  id: 'user-id-123',
  firstName: 'Roman',
  lastName: 'Valero',
  imageUrl: 'https://picsum.photos/id/177/200/200',
);

final geminiUser = types.User(
  id: 'gemini-id',
  firstName: 'Gemini',
  imageUrl: 'https://picsum.photos/id/277/200/200',
);

final message = <types.Message>[
  types.TextMessage(author: user, id: Uuid().v4(), text: 'Hola Mundo'),
  types.TextMessage(author: user, id: Uuid().v4(), text: 'Hola Mundo 2'),
  types.TextMessage(author: geminiUser, id: Uuid().v4(), text: 'Hola Mundo 3'),
];

class BasicPromptScreen extends StatelessWidget {
  const BasicPromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prompt Basico')),
      body: Chat(
        messages: message,
        onSendPressed: (types.PartialText partialText) {
          print('mensaje: ${partialText.text}');
        },
        user: user,
        theme: DarkChatTheme(),
        showUserNames: true,
        //showUserAvatars: true,
        typingIndicatorOptions: TypingIndicatorOptions(
          //typingUsers: [geminiUser],
          customTypingWidget: const Center(
            child: Text('Gemini esta pensando...'),
          ),
        ),
      ),
    );
  }
}
