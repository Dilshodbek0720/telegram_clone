import 'package:flutter/material.dart';
import 'package:telegram_clone/ui/calls/widgets/call_models.dart';

import '../../utils/colors/app_colors.dart';

class CallItem extends StatelessWidget {
  const CallItem({super.key, required this.callModel});
  final CallModel callModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        title: Text(callModel.callTitle, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 17, fontWeight: FontWeight.w500, color: callModel.isColor ? Colors.red : Theme.of(context).textTheme.titleSmall?.color),),
        subtitle: Text(callModel.callSubtitle, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400, fontSize: 13,color: AppColors.c7E7E82),),
        leading: SizedBox(
          height: 40,
          width: 65,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 11, width: 11, child: Icon(Icons.phone_callback_outlined),),
                const SizedBox(width: 10,),
                SizedBox(height: 40, width: 40, child: Image.asset(callModel.callImage),),
              ],
            ),
          ),
        ),
        trailing: SizedBox(
          height: 20,
          width: 74,
          child: Row(children: [
            const Spacer(),
            Text(callModel.time, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 15, fontWeight: FontWeight.w400,color: AppColors.c7E7E82),),
            const SizedBox(width: 8,),
            SizedBox(height: 22, width: 22, child: Icon(Icons.info_outline, color: Theme.of(context).appBarTheme.iconTheme?.color,),)
          ],),
        ),
      ),
    );
  }
}
