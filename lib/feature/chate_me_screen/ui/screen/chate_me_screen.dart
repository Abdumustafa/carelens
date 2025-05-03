import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/feature/chate_me_screen/ui/widget/ai_helper.dart';
import 'package:carelens/feature/chate_me_screen/ui/widget/chat_buple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChateMeScreen extends StatefulWidget {
  const ChateMeScreen({super.key});

  @override
  State<ChateMeScreen> createState() => _ChateMeScreenState();
}

class _ChateMeScreenState extends State<ChateMeScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, String>> _chatHistory = [];
  bool _isLoading = false;

  Future<void> _sendMessage() async {
    if (_messageController.text.isEmpty || _isLoading) return;

    final userMessage = _messageController.text.trim();
    _messageController.clear();

    setState(() {
      _chatHistory.add({'role': 'user', 'msg': userMessage});
      _isLoading = true;
    });

    _scrollToBottom();

    try {
      final botResponse = await sendMessageToGPT(userMessage);

      setState(() {
        _chatHistory.add({'role': 'bot', 'msg': botResponse});
        _isLoading = false;
      });

      _scrollToBottom();
    } catch (e) {
      setState(() {
        _chatHistory.add({
          'role': 'bot',
          'msg':
              'حدث خطأ تقني: ${e.toString().replaceAll(RegExp(r'^Exception: '), '')}'
        });
        _isLoading = false;
      });
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Health Assistant",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            children: [
              const SizedBox(width: 20),
              SvgPicture.asset(
                'assets/icons/back_arrow.svg',
                color: Colors.black,
                height: 15,
                width: 15,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.only(top: 30),
              itemCount: _chatHistory.length + (_isLoading ? 2 : 1),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Welcome to Health Assistant! I’m here to help you \nmake smarter choices at the supermarket.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.3),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      verticalSpace(100)
                    ],
                  );
                }

                if (_isLoading && index == 1) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: CircularProgressIndicator(color: Colors.green),
                    ),
                  );
                }

                final messageIndex = index - (_isLoading ? 2 : 1);
                final message = _chatHistory[messageIndex];

                return message['role'] == 'user'
                    ? ChatBuble(message: message['msg']!)
                    : ChatBubleFriend(message: message['msg']!);
              },
            ),
          ),
          // Input field ثابت أسفل الشاشة
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Type your message...',
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: IconButton(
                    icon: Transform.rotate(
                      angle: -35 * 3.1415926535 / 180,
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    onPressed: _sendMessage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
