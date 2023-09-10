import '../../utils/images/app_images.dart';

class ChatModel {
  final String chatImage;
  final String chatTitle;
  final String chatSubtitle;
  final String time;

  ChatModel(
      {required this.chatImage,
      required this.chatTitle,
      required this.chatSubtitle,
      required this.time});
}

List<ChatModel> chatsModel = [
  ChatModel(chatImage: AppImages.savedImage, chatTitle: "Saved Messages", chatSubtitle: "image.jpeg", time: "Fri"),
  ChatModel(chatImage: AppImages.teamImage, chatTitle: "Pixsellz Team", chatSubtitle: "Hasan Web", time: "9/29"),
  ChatModel(chatImage: AppImages.joshuaImage, chatTitle: "Joshua Lawrence", chatSubtitle: "Let’s choose the first option", time: "Sun"),
  ChatModel(chatImage: AppImages.designerImage, chatTitle: "Telegram Designers", chatSubtitle: "GIF, Suggested by @alex_21", time: "10:42"),
  ChatModel(chatImage: AppImages.albertImage, chatTitle: "Albert Lasker", chatSubtitle: "Like your quote about a superidea!", time: "9:15"),
  ChatModel(chatImage: AppImages.figmaImage, chatTitle: "Figma Plugins", chatSubtitle: "👋 IOS 13 Design Kit.\nTurn your ideas into incredible wor…", time: "Sat"),
  ChatModel(chatImage: AppImages.uxImage, chatTitle: "UX Live", chatSubtitle: "🤖 Sketch App. 👨‍💻", time: "11:30")
];