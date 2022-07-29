import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_demo/resource/app_dimensions.dart';
import 'package:ui_demo/themes/app_colors.dart';
import 'package:ui_demo/themes/app_text_styles.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold (
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const BackButton(color: AppColors.chineseBlack,),
        title: const Text("Payment Options", style: AppTextStyles.medB3_500,),
      ),
      body: Container(
        color: AppColors.white,
        child: Column(
          children: [
            Container(height: 1, color: AppColors.soap,),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: _getPaymentMethodList(createDummyList()),
            )),
          ],
        ),
      ),
    ));
  }
  Widget _getPaymentMethodList(List<PaymentMethodModel> paymentMethodList) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: paymentMethodList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDimen16, vertical: kDimen12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(kDimen12),
                          child: SvgPicture.asset(paymentMethodList[index].image??""),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(paymentMethodList[index].title ?? "", style: AppTextStyles.medB4_500,),
                            Text(paymentMethodList[index].subtitle ?? "", style: AppTextStyles.regB5_400,)
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset("assets/svgs/ic_right_arrow.svg")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top : kDimen24),
                  child: Container(height: 1, color: AppColors.soap,),
                )
              ],
            ),
          );
        });
  }

  List<PaymentMethodModel> createDummyList() {
    List<PaymentMethodModel> paymentList = [];
    paymentList.add(PaymentMethodModel(image: "assets/svgs/ic_card.svg",title: "Card (Credit/Debit)",subtitle: "Pay using your credit or debit card"));
    paymentList.add(PaymentMethodModel(image: "assets/svgs/ic_net_banking.svg",title: "Net Banking",subtitle: "Pay using any of 47 supported banks"));
    paymentList.add(PaymentMethodModel(image: "assets/svgs/ic_wallet.svg",title: "Wallet",subtitle: "Venmo, Apple Pay available"));
    return paymentList;
  }
}

class PaymentMethodModel {
  String? image;
  String? title;
  String? subtitle;
  PaymentMethodModel({this.image, this.title, this.subtitle});
}

