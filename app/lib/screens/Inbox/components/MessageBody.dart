import 'package:app/screens/Inbox/components/chat_input_field.dart';
import 'package:app/screens/Inbox/models/ChatMessages.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MessageBody extends StatefulWidget {
  const MessageBody({super.key});

  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Messages(
                message: demeChatMessages[index],
              ),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({super.key, required this.message});

  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        TextMessage(
          message: message,
        ),
      ],
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({super.key, required this.message});
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(right: 15, left: 15),
      decoration: BoxDecoration(
        color: message.isSender ? Colors.brown[400] : Colors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: TextStyle(color: message.isSender ? Colors.white : Colors.black),
      ),
    );
  }
}
