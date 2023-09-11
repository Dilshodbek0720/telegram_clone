import 'package:telegram_clone/ui/utils/images/app_images.dart';

class CallModel {
  final String callImage;
  final String callTitle;
  final String callSubtitle;
  final String time;
  final bool isColor;

  CallModel(
      {required this.callImage,
        required this.callTitle,
        required this.callSubtitle,
        required this.time,
        required this.isColor
      });
}

List<CallModel> callsModel = [
  CallModel(callImage: AppImages.martinImage, callTitle: "Martin Randolph", callSubtitle: "Outgoing (2 min)", time: "10/13", isColor: false),
  CallModel(callImage: AppImages.karenImage, callTitle: "Karen Castillo", callSubtitle: "Outgoing, Incoming", time: "10/11", isColor: false),
  CallModel(callImage: AppImages.kieronImage, callTitle: "Kieron Dotson", callSubtitle: "Outgoing", time: "10/8", isColor: false),
  CallModel(callImage: AppImages.karenImage, callTitle: "Karen Castillo", callSubtitle: "Missed", time: "9/30", isColor: true),
  CallModel(callImage: AppImages.zackImage, callTitle: "Zack John", callSubtitle: "Incoming", time: "9/24", isColor: false),
  CallModel(callImage: AppImages.kieronImage, callTitle: "Kieron Dotson", callSubtitle: "Outgoing (4 min)", time: "9/16", isColor: false),
  CallModel(callImage: AppImages.kieronImage, callTitle: "Kieron Dotson", callSubtitle: "Outgoing", time: "9/15", isColor: false),
  CallModel(callImage: AppImages.jamieImage, callTitle: "Jamie Franco", callSubtitle: "Icoming (2 min)", time: "9/15", isColor: false),
  CallModel(callImage: AppImages.marthaImage, callTitle: "Martha Craig", callSubtitle: "Icoming", time: "9/10", isColor: false),
  CallModel(callImage: AppImages.marthaImage, callTitle: "Martha Craig", callSubtitle: "Outgoing", time: "9/10", isColor: false),
  CallModel(callImage: AppImages.maisyImage, callTitle: "Maisy Humphrey", callSubtitle: "Outgoing", time: "9/6", isColor: false),
  CallModel(callImage: AppImages.jamieImage, callTitle: "Jamie Franco", callSubtitle: "Missed", time: "8/22", isColor: true),
  CallModel(callImage: AppImages.maisyImage, callTitle: "Maisy Humphrey", callSubtitle: "Outgoing (3 min)", time: "8/22", isColor: false),
];