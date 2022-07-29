import 'package:flutter/material.dart';
import 'package:ui_demo/payment_option.dart';
import 'package:ui_demo/resource/app_dimensions.dart';
import 'package:ui_demo/themes/app_colors.dart';
import 'package:ui_demo/themes/app_text_styles.dart';

class BookingDetail extends StatelessWidget{
  const BookingDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const BackButton(color: AppColors.chineseBlack,),
        title: const Text("Booking Detail", style: AppTextStyles.medB3_500,),
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 1, color: AppColors.soap,),
                const SizedBox(height: kDimen32,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDimen16),
                  child: Text("Trip Detail", style: AppTextStyles.boldB2_700,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDimen16, right: kDimen16, top: kDimen24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Date ", style: AppTextStyles.medB3_500,),
                      Text("22 - 28 June", style: AppTextStyles.regB4_400,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDimen16, right: kDimen16, top: kDimen24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Guests ", style: AppTextStyles.medB3_500,),
                      Text("1 M, 1 F", style: AppTextStyles.regB4_400,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDimen24, horizontal: kDimen16),
                  child: Container(height: 3, color: AppColors.soap,),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDimen16),
                  child: Text("Amount Details", style: AppTextStyles.boldB2_700,),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDimen16, vertical: kDimen8),
                  child: Text("(Original price \$300 Night / 3 = \$100 PP)", style: AppTextStyles.regB4_400,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDimen16, right: kDimen16, top: kDimen24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("\$100 X 5 Night - 1st guest  ", style: AppTextStyles.regB4_400,),
                      Text("\$500", style: AppTextStyles.regB4_400,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDimen16, right: kDimen16, top: kDimen16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("\$100 X 5 Night - 2nd guest   ", style: AppTextStyles.regB4_400,),
                      Text("\$500", style: AppTextStyles.regB4_400,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDimen16, right: kDimen16, top: kDimen16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Service charge 5%", style: AppTextStyles.regB4_400,),
                      Text("\$50", style: AppTextStyles.regB4_400,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDimen16, right: kDimen16, top: kDimen16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total amount", style: AppTextStyles.medB4_500,),
                      Text("\$1050", style: AppTextStyles.medB4_500,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDimen24, horizontal: kDimen16),
                  child: Container(height: 1, color: AppColors.soap,),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDimen16),
                  child: Text("Enter a coupon", style: TextStyle(
                    fontSize: 16,
                    fontFamily: FontFamilies.inter,
                    fontWeight: FontWeight.w400,
                    color: AppColors.chineseBlack,
                    decoration: TextDecoration.underline,
                  ),),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentOption()),
                );
              },
              child: Container(
                height: kDimen90,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: kDimen8,
                        color: AppColors.shadow,
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(kDimen16),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.plumpPurplePrimary,
                      borderRadius: BorderRadius.all(Radius.circular(kDimen12))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDimen16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Confirm and Pay", style: AppTextStyles.medB4_500.copyWith(color: AppColors.white),),
                          Text("\$1050",style: AppTextStyles.medB3_500.copyWith(color: AppColors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
  
}