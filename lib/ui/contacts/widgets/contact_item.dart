import 'package:flutter/material.dart';
import 'package:telegram_clone/ui/utils/colors/app_colors.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.contactTitle, required this.contactSubtitle, required this.contactImage});

  final String contactTitle;
  final String contactSubtitle;
  final String contactImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        title: Text(contactTitle, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 17, fontWeight: FontWeight.w500, ),),
        subtitle: Text(contactSubtitle, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400, fontSize: 13, color: contactSubtitle == "online" ? Colors.blue : AppColors.c7E7E82),),
        leading: SizedBox(height: 40, width: 40, child: Image.asset(contactImage),),
      ),
    );
  }
}
