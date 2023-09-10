import 'package:flutter/material.dart';
import 'package:telegram_clone/ui/utils/colors/app_colors.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.chatImage, required this.chatTitle, required this.chatSubtitle, required this.time});
  final String chatImage;
  final String chatTitle;
  final String chatSubtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: Center(
        child: ListTile(
          onTap: (){},
          leading: SizedBox(height: 60, width: 60, child: Image.asset(chatImage),),
          title: Text(chatTitle, style: Theme.of(context).textTheme.titleLarge,),
          subtitle: Text(chatSubtitle, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.c8E8E93),),
          trailing: Column(
            children: [
              const SizedBox(height: 10,),
              Text(time, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.c8E8E93),)
            ],
          ),
        ),
      ),
    );
  }
}
