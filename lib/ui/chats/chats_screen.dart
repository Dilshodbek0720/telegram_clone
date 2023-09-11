import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_clone/ui/chats/widgets/chat_item.dart';
import 'package:telegram_clone/ui/chats/widgets/chats_models.dart';
import 'package:telegram_clone/ui/utils/images/app_images.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats", style: Theme.of(context).textTheme.titleLarge,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){ }, icon: SizedBox(height: 20, width: 20, child: SvgPicture.asset(AppImages.editIcon))),
          const SizedBox(width: 8,),
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).primaryColorDark
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: ListView(
        children: [
          ...List.generate(chatsModel.length, (index) => ChatItem(chatImage: chatsModel[index].chatImage, chatTitle: chatsModel[index].chatTitle, chatSubtitle: chatsModel[index].chatSubtitle, time: chatsModel[index].time))
        ],
      ),
    );
  }
}
