import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_demo/booking_detail.dart';
import 'package:ui_demo/carousel.dart';
import 'package:ui_demo/resource/app_dimensions.dart';
import 'package:ui_demo/resource/app_strings.dart';
import 'package:ui_demo/themes/app_colors.dart';
import 'package:ui_demo/themes/app_text_styles.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: kDimen90),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    const SizedBox(height: 400,child: CarouselWidget()),
                     Padding(
                       padding: const EdgeInsets.only(top:300),
                       child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          )
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(kDimen24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "March 24, 2020",
                                    style: AppTextStyles.regB5_400,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.pastelRedSecondary,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(kDimen16),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(kDimen8),
                                      child: Text(
                                        AppStrings.kFemaleOnly,
                                        style: AppTextStyles.medB5_500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: kDimen24, right: kDimen24, top: kDimen14),
                              child: Text(
                                "The Zuri White Sands Goa Resort and Casino",
                                style: AppTextStyles.medB2_500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(kDimen24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/svgs/ic_location.svg"),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: kDimen8),
                                        child: Text(
                                          "Miami, FL 33132",
                                          style: AppTextStyles.regB5_400,
                                        ),
                                      ),
                                      SvgPicture.asset("assets/svgs/ic_arrow_up.svg"),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(kDimen24),
                                      ),
                                      border: Border.all(
                                        color: AppColors.soap,
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(kDimen8),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("assets/svgs/ic_star.svg"),
                                          const Padding(
                                            padding: EdgeInsets.only(left: kDimen8),
                                            child: Text(
                                              "4.0",
                                              style: AppTextStyles.medB4_500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: kDimen24, right: kDimen24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(kDimen24),
                                      ),
                                      border: Border.all(
                                        color: AppColors.soap,
                                        width: 1,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(kDimen8),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: kDimen8),
                                        child: Text(
                                          "4 Jun - 6 Jun",
                                          style: AppTextStyles.medB4_500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "\$100",
                                        style: AppTextStyles.medB3_500,
                                      ),
                                      Text(
                                        "/Day",
                                        style: AppTextStyles.regB3_400,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: kDimen24,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: kDimen24),
                              child: Container(
                                height: 1,
                                color: AppColors.soap,
                              ),
                            ),
                            const SizedBox(
                              height: kDimen24,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: kDimen24),
                              child: Text(
                                AppStrings.kDetails,
                                style: AppTextStyles.medB3_500,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: kDimen24, top: kDimen8),
                              child: Text(
                                AppStrings.kDetailData,
                                style: AppTextStyles.regB4_400,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: kDimen24, right: kDimen24, top: kDimen12),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(kDimen20),
                                  ),
                                  border: Border.all(
                                    color: AppColors.soap,
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: kDimen64,
                                          width: kDimen64,
                                          child: Padding(
                                            padding: const EdgeInsets.all(kDimen12),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.circular(kDimen20),
                                                child: Image.network(
                                                  "https://picsum.photos/200/300?random=1",
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left:kDimen8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text("Albert Flores", style: AppTextStyles.medB3_500,),
                                              Text("Doctor", style: AppTextStyles.regB4_400.copyWith(
                                                  color: AppColors.crayola
                                              ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: kDimen12),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: AppColors.green,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(kDimen24),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(kDimen8),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset("assets/svgs/ic_user.svg"),
                                              const Padding(
                                                padding: EdgeInsets.only(left: kDimen8),
                                                child: Text(
                                                  "5.0",
                                                  style: AppTextStyles.medB5_500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: kDimen24, top: kDimen16),
                              child: Text(
                                AppStrings.kSimilar,
                                style: AppTextStyles.medB3_500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: kDimen24,top: kDimen12, right: 0, bottom: kDimen16),
                              child: SizedBox(height: 350,child: _getSimilarHotelList()),
                            )
                          ],
                        ),
                    ),
                     ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(kDimen12),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(kDimen25))
                    ),
                    child: const BackButton(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(kDimen12),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(kDimen16),
                        child: Container(
                          height: kDimen48, width: kDimen48,
                          decoration: const BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.all(Radius.circular(kDimen25))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(kDimen12),
                            child: SvgPicture.asset("assets/svgs/ic_bookmark.svg"),
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/svgs/ic_share.svg", height: 48, width: 48,)
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
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
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const BookingDetail()),
                            );
                          },
                          child: Container(
                            height: kDimen50,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(kDimen12)),
                              border: Border.all(
                                color: AppColors.plumpPurplePrimary,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: kDimen24),
                              child: Center(child: Text("Request", style: AppTextStyles.medB4_500.copyWith(color: AppColors.plumpPurplePrimary),)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          height: kDimen50,
                          decoration: const BoxDecoration(
                              color: AppColors.plumpPurplePrimary,
                              borderRadius: BorderRadius.all(Radius.circular(kDimen12))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: kDimen24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset("assets/svgs/ic_msg.svg"),
                                Padding(
                                  padding: const EdgeInsets.only(left: kDimen8),
                                  child: Text("Send Message",style: AppTextStyles.medB3_500.copyWith(color: AppColors.white),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSimilarHotelList() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return  Padding(
            padding: const EdgeInsets.only(right: kDimen8),
            child: Wrap(
              children: [
                 Container(
                  width: 290,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(kDimen20),
                    ),
                    border: Border.all(
                      color: AppColors.soap,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 250,
                            width: 290,
                            child: Padding(
                              padding: const EdgeInsets.all(kDimen12),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(kDimen20),
                                  child: Image.network(
                                    "https://picsum.photos/200/300?random=1",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(kDimen16),
                                ),
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.all(kDimen8),
                                child: Text(
                                  "4 Jun - 6 Jun",
                                  style: AppTextStyles.medB5_500.copyWith(color: AppColors.chineseBlack),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: kDimen16),
                        child: Text("Hilton Miami Downtown",style: AppTextStyles.boldB2_700,),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: kDimen16, top: kDimen4),
                        child: Text("Albert Flores",style: AppTextStyles.regB4_400,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: kDimen16, top: kDimen4, bottom: kDimen12),
                        child: Row(
                          children: const [
                            Text(
                              "\$100",
                              style: AppTextStyles.medB3_500,
                            ),
                            Text(
                              "/Day",
                              style: AppTextStyles.regB3_400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
