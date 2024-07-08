import 'package:flutter/material.dart';
import 'package:talking_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:talking_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:talking_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDsI2AWitmVy2sU6R9SoPKGqU-8xMWTG_pGg&s'),
          ),
        ),
        title: const Text('Mi Amor ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10 ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  //* Se crea un condicional para mostrar el mensaje de la persona que lo envia
                  return ( index % 2 == 0 )
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
              },),
            ),

            //* Caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}