import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  final int selectedTab;
  final Function(int) onTabChange;
  final double width;

  AppTabBar({
    super.key,
    this.selectedTab = 0,
    required this.onTabChange,
    this.width = 0,
  });

  // final Session us = Session.getInstance();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(500),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [firstTab(width, 0), secondTab(width + 0.1, 1)],
      ),
    );
  }

  Widget firstTab(double width, int index) {
    return Expanded(
      child: InkWell(
        onTap: () => onTabChange(index),
        child: Container(
          height: 55,
          width: width / 2.08,
          decoration: BoxDecoration(
            color: selectedTab == index ? AppColors.primaryColor : Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    shape: BoxShape.circle,
                  ),
                  child:
                      selectedTab == index
                          ? Icon(
                            Icons.medical_services,
                            size: 12,
                            color: AppColors.primaryColor,
                          )
                          : Icon(
                            Icons.medical_services_outlined,
                            size: 12,
                            color: AppColors.primaryColor,
                          ),
                ),
              ),
              Text(
                "In-Clinic \nAppointment",
                style:
                    selectedTab == index
                        ? TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                        : TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget secondTab(double width, int index) {
    return Expanded(
      child: InkWell(
        onTap: () => onTabChange(index),
        child: Container(
          height: 55,
          width: width / 2.09,
          decoration: BoxDecoration(
            color: selectedTab == index ? AppColors.purpleColor : Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    shape: BoxShape.circle,
                  ),
                  child:
                      selectedTab == index
                          ? Icon(
                            Icons.videocam,

                            size: 12,
                            color: AppColors.purpleColor,
                          )
                          : Icon(
                            Icons.videocam_outlined,
                            size: 12,
                            color: AppColors.primaryColor,
                          ),
                ),
              ),
              Text(
                "Video \nConsultation",
                style:
                    selectedTab == index
                        ? TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                        : TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   Widget singleTab(int index) {
//     return Expanded(
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         height: 40,
//         width: 100.w,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(500),
//           color:
//               selectedTab == index ? us.themeModel.tabsBGColor : Colors.white,
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(2, 2),
//               blurRadius: 4,
//               spreadRadius: 0,
//               color: us.themeModel.shadowColor.withOpacity(0.5),
//               inset: true,
//             ),
//           ],
//         ),
//         child: Material(
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: () => onTabChange(index),
//             borderRadius: BorderRadius.circular(500),
//             child: Center(
//               child: Text(
//                 index == 0 ? firstTabName : secondTabName,
//                 style: AppTextstyle.text2Style.copyWith(
//                   color:
//                       selectedTab == index
//                           ? us.themeModel.tabsTextColor
//                           : us.themeModel.tabsTextColor,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ToggleBar {
//   static toggleButton(double width, int index) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           height: 55,
//           width: width / 2.08,
//           decoration: BoxDecoration(
//             color: AppColors.primaryColor,
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(4),
//               bottomLeft: Radius.circular(4),
//             ),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 8.0),
//                 child: Container(
//                   width: 22,
//                   height: 22,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.grey.shade300),
//                     shape: BoxShape.circle,
//                   ),
//                   child: Icon(
//                     Icons.medical_services,
//                     size: 12,
//                     color: AppColors.primaryColor,
//                   ),
//                 ),
//               ),
//               Text(
//                 "In-Clinic \n Appointment",
//                 style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 0),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           height: 55,
//           width: width / 2.09,
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(4),
//               bottomRight: Radius.circular(4),
//             ),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 8.0),
//                 child: Container(
//                   width: 22,
//                   height: 22,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.grey.shade300),
//                     shape: BoxShape.circle,
//                   ),
//                   child: Icon(
//                     Icons.videocam_outlined,
//                     size: 12,
//                     color: AppColors.primaryColor,
//                   ),
//                 ),
//               ),
//               Text(
//                 "Video \n Consultation",
//                 style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 0),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
