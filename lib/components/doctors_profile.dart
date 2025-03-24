import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:fadfocus_assignment/constants/app_textstyles.dart';
import 'package:fadfocus_assignment/routes/routes_name.dart';
import 'package:fadfocus_assignment/screens/select_doctors/select_doctor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorsProfile extends StatefulWidget {
  const DoctorsProfile({super.key});

  @override
  State<DoctorsProfile> createState() => _DoctorsProfileState();
}

class _DoctorsProfileState extends State<DoctorsProfile> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SelectDoctorViewmodel>(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dr. Jishan Tamboli",
                              style: AppTextstyles.titleText,
                            ),
                            SizedBox(width: 130),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(Icons.done_rounded, size: 12),
                              ),
                            ),
                          ],
                        ),
                        Text("Dentist"),
                        Text("15 years experiance overall"),
                        Text("1068 patient stories"),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(color: Colors.grey.shade300),
              viewModel.tabIndex == 0
                  ? Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white,
                          height: 45,
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                width: 55,
                                margin: EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: AppColors.greenColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.thumb_up_alt,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "98%",
                                      style: AppTextstyles.titleText.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Patient\nRecommendation",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: 45,
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                width: 55,
                                margin: EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_rate_sharp,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "4.3",
                                      style: AppTextstyles.titleText.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Clinic Excellence \nRating",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                  : SizedBox.shrink(),
              viewModel.tabIndex == 0
                  ? Divider(color: Colors.grey.shade300)
                  : SizedBox.shrink(),
              Text(
                "Kharadi * Dr. Ratnika's - Smile Up Dental Clinic & implant center ~ ₹ 300 Consultation Fees",
              ),
              Divider(color: Colors.grey.shade300),
              Text(
                "NEXT AVAILABLE AT",
                style: AppTextstyles.smallTitle.copyWith(
                  fontSize: 12,
                  color: AppColors.greenColor,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.medical_services_outlined, color: Colors.black54),
                  Text("  05:20 PM, Today", style: TextStyle(fontSize: 10)),
                ],
              ),
              Row(
                children: [
                  viewModel.tabIndex == 0
                      ? Expanded(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: AppColors.secondaryColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call, color: AppColors.secondaryColor),
                              Text(
                                "Contact Clinic",
                                style: AppTextstyles.smallTitle,
                              ),
                            ],
                          ),
                        ),
                      )
                      : SizedBox.shrink(),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.book_slots);
                      },
                      child: Container(
                        margin: EdgeInsets.all(2),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              viewModel.tabIndex == 0
                                  ? AppColors.secondaryColor
                                  : AppColors.purpleColor,
                          // border: Border.all(color: AppColors.secondaryColor),
                        ),
                        child: Center(
                          child: Text(
                            "Book Clinic Visit",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
