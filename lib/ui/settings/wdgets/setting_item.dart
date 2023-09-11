import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_clone/ui/utils/colors/app_colors.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.icon, required this.title});
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Theme.of(context).primaryColorDark,
      child: Center(
        child: ListTile(
          leading: SizedBox(
            height: 29,
            width: 29,
            child: SvgPicture.asset(icon),
          ),
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 17, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: AppColors.c7E7E82, size: 18,),
        ),
      ),
    );
  }
}

class SpaceItem extends StatelessWidget {
  const SpaceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 330.0),
      child: Container(height: 0.3, width: 100, color: Theme.of(context).primaryColorDark),
    );
  }
}
