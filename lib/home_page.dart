import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naphs_app/widgets/Hint.dart';
import 'package:naphs_app/widgets/app_store_button.dart';
import 'package:naphs_app/widgets/circle_photo.dart';
import 'package:naphs_app/widgets/constant.dart';
import 'package:naphs_app/widgets/custom_button.dart';
import 'package:naphs_app/widgets/download_button.dart';
import 'package:naphs_app/widgets/google_play_button.dart';
import 'package:naphs_app/widgets/row_text.dart';
import 'package:naphs_app/widgets/text_bold.dart';
import 'package:naphs_app/widgets/text_bold_36.dart';
import 'package:naphs_app/widgets/text_in_row.dart';
import 'package:naphs_app/widgets/text_poppins.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedTitle = "الرئيسية";

  void updateSelectedTitle(String title) {
    setState(() {
      selectedTitle = title;
    });
  }

  final ScrollController scrollController = ScrollController();

  final phase1 = GlobalKey();
  final phase2 = GlobalKey();
  final phase3 = GlobalKey();
  final phase4 = GlobalKey();
  final phase5 = GlobalKey();
  final phase6 = GlobalKey();

  Future scrollToItem1() async {
    final context = phase1.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.easeInOut, duration: Duration(seconds: 1));
  }

  Future scrollToItem2() async {
    final context = phase2.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.easeInOut, duration: Duration(seconds: 1));
  }

  Future scrollToItem3() async {
    final context = phase3.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.easeInOut, duration: Duration(seconds: 1));
  }

  Future scrollToItem4() async {
    final context = phase4.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.easeInOut, duration: Duration(seconds: 1));
  }

  Future scrollToItem5() async {
    final context = phase5.currentContext!;
    await Scrollable.ensureVisible(context,
        curve: Curves.easeInOut, duration: Duration(seconds: 1));
  }

  Future scrollToItem6() async {
    await scrollController.animateTo(
      0, // Scroll to the top (offset 0)
      duration: Duration(seconds: 1), // Animation duration
      curve: Curves.easeInOut, // Animation curve
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            controller: scrollController,
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                pinned: true,
                forceElevated: false,
                expandedHeight: 120.0,
                flexibleSpace: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppBarNaphs,
                                  height: 250.h,
                                  //width: 60.w,
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: TextInRow(
                                    title: "الرئيسية",
                                    isSelected: selectedTitle == "الرئيسية",
                                    onTap: () {
                                      updateSelectedTitle("الرئيسية");
                                      scrollToItem6();
                                    },
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                TextInRow(
                                  title: "المميزات",
                                  isSelected: selectedTitle == "المميزات",
                                  onTap: () {
                                    updateSelectedTitle("المميزات");
                                    scrollToItem1();
                                  },
                                ),
                                SizedBox(width: 8.w),
                                TextInRow(
                                  title: "المتجر",
                                  isSelected: selectedTitle == "المتجر",
                                  onTap: () {
                                    updateSelectedTitle("المتجر");
                                    scrollToItem2();
                                  },
                                ),
                                SizedBox(width: 8.w),
                                TextInRow(
                                  title: "الدفع",
                                  isSelected: selectedTitle == "الدفع",
                                  onTap: () {
                                    updateSelectedTitle("الدفع");
                                    scrollToItem5();
                                  },
                                ),
                                SizedBox(width: 8.w),
                                TextInRow(
                                  title: "رأي العملاء",
                                  isSelected: selectedTitle == "رأي العملاء",
                                  onTap: () {
                                    updateSelectedTitle("رأي العملاء");
                                    scrollToItem3();
                                  },
                                ),

                                // const SizedBox(width: 580),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    // width: 10.w,
                                    child: CustomButton(
                                      onTap: () {
                                        scrollToItem4();
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 18),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              key: phase6,
                              children: [
                                TextPoppins(
                                    title: "نافث", color: Color(0xff212121)),
                                TextPoppins(
                                    title: "تطبيق", color: Color(0xff8E97FD)),
                              ],
                            ),
                            Hint(
                                title:
                                    "،علاجك الفعال من العين والحسد والسحر والمس",
                                color: Color(0xff6C87AE)),
                            Hint(
                                title: "عن طريق الرقية الشرعية (عن بعد)",
                                color: Color(0xff6C87AE)),
                            SizedBox(
                              height: 15.h,
                            ),
                            DownloadButton(),
                          ],
                        ),
                        Spacer(),
                        Container(
                          child: Image.asset(Mobile),
                          width: 180.w,
                          height: 650.h,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F9FF),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    Container(
                      key: phase1,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CirclePhoto(Photo: Photo1),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextBold(
                                    color: Color(0xff212121),
                                    size: 6.sp,
                                    title: "يضم أمهر الرقاه"),
                                Hint(
                                    title:
                                        "يضم أمهر الرقاة ليكونو سبب لشفائك بإذن الله",
                                    color: Color(0xff747474)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CirclePhoto(Photo: Photo2),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextBold(
                                    color: Color(0xff212121),
                                    size: 6.sp,
                                    title: "غرف للسيدات فقط"),
                                Hint(
                                    title:
                                        "يضم غرف للسيدات فقط للحفاظ على الخصوصية",
                                    color: Color(0xff747474)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CirclePhoto(Photo: Photo3),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextBold(
                                    color: Color(0xff212121),
                                    size: 6.sp,
                                    title: "إشعارات دائمة بموعد المقابلة"),
                                Hint(
                                    title:
                                        "تلقى اشعارات دائمة ليصبح التطبيق جزء من يومك",
                                    color: Color(0xff747474)),
                                Hint(
                                    title: "ويذكرك بمواعيد مقابلاتك مع الرقاه",
                                    color: Color(0xff747474))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                    Row(
                      children: [
                        Container(
                          key: phase2,
                          child: Image.asset(Phase3),
                          width: 160.w,
                          height: 500.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEEF4FF),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              bottomRight: Radius.circular(170),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextBold36(
                                  color: Color(0xff212121),
                                  title: "متجر كامل يلبي احتياجاتك في"),
                              TextBold36(
                                  color: Color(0xff212121), title: "الشفاء"),
                              Hint(
                                  title:
                                      "يحتوي نافث على متجر الكتروني به كل ما تحتاجه في رحلتك في",
                                  color: Color(0xff747474)),
                              Hint(
                                  title:
                                      "الشفاء، من مياه مقروء عليها و ماء زمزم وغيرها من المنتجات",
                                  color: Color(0xff747474)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            key: phase5,
                            children: [
                              TextBold36(
                                  color: Color(0xff212121),
                                  title: ",عمليات دفع أمنه وسلسة"),
                              TextBold36(
                                  color: Color(0xff212121),
                                  title: "وبأسعار رمزية"),
                              SizedBox(
                                height: 20.h,
                              ),
                              Hint(
                                  title:
                                      "بأسعار رمزية يغنيك تطبيق نافث عن إضاعه اموال طائلة ووقت",
                                  color: Color(0xff747474)),
                              Hint(
                                  title: "ومجهود في التردد على المشايخ والرقاه",
                                  color: Color(0xff747474)),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          key: phase5,
                          child: Image.asset(Phase4),
                          width: 150.w,
                          height: 500.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEEF4FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomLeft: Radius.circular(80),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                    Container(
                      key: phase4,
                      width: 300.w,
                      height: 400.h,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            TextBold36(
                              title: "%50 حمل التطبيق الان واحصل على خصم",
                              color: Color(0xffFFFFFF),
                            ),
                            TextBold36(
                                title: "التطبيق متوفر للاندرويد والايفون",
                                color: Color(0xffFFFFFF)),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: GooglePlayButton(),
                                  ),
                                  AppStoreButton()
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff8E97FD),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                    Row(
                      children: [
                        Container(
                          key: phase3,
                          child: Image.asset(PhonePerspective),
                          width: 200.w,
                          height: 650.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " ” ماذا قال العملاء عن ",
                                    style: TextStyle(
                                      color: Color(0xff212121),
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "”",
                                    style: TextStyle(
                                      color: Color(0xff212121),
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " نافث",
                                    style: TextStyle(
                                      color: Color(0xff8E97FD),
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 10.sp,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextBold(
                                        title: "احمد مصطفى",
                                        size: 6.sp,
                                        color: Color(0xff212121)),
                                    Hint(
                                        title: "Student at University",
                                        color: Color(0xff747474))
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              " “  تطبيق رائع ومبارك، ساعدني كثير، تحية لكل العاملين عليه “ ",
                              style: TextStyle(
                                fontSize: 5.sp,
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  size: 8.sp,
                                  color: Color(0xff8E97FD),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 8.sp,
                                  color: Color(0xff8E97FD),
                                ),
                                SizedBox(
                                  width: 100.sp,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // توزيع متساوٍ للعناصر
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    Naphs,
                                    height: 200.h,
                                    width: 200.w,
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Text(
                                    "،هدفنا مساعدة اكبر عدد من الناس في جميع المراحل",
                                    style: TextStyle(
                                        color: Color(0xff6C87AE),
                                        fontSize: 4.sp), // لون وحجم النص
                                    softWrap: false,
                                    overflow: TextOverflow.visible,
                                  ),
                                  Text(
                                    "للوصول للشفاء التام وعيش حياة افضل",
                                    style: TextStyle(
                                        color: Color(0xff6C87AE),
                                        fontSize: 4.sp), // لون وحجم النص
                                    softWrap: false,
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextBold(
                                      title: "Sitemaps",
                                      size: 7.sp,
                                      color: Color(0xff000000)),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  RowText(title: "Home"),
                                  RowText(title: "Features"),
                                  RowText(title: "About Us")
                                ],
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextBold(
                                      title: "Advantages",
                                      size: 7.sp,
                                      color: Color(0xff000000)),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  RowText(title: "Set Task Better"),
                                  RowText(title: "Easy Manage"),
                                  RowText(title: "Get Notification")
                                ],
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextBold(
                                      title: "Follow Us",
                                      size: 7.sp,
                                      color: Color(0xff000000)),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    // توسيط الأيقونات
                                    children: [
                                      Image.asset(
                                          height: 35.h,
                                          width: 10.w,
                                          uimFacebook),
                                      SizedBox(width: 2.w), // مسافة بين الصور
                                      Image.asset(
                                          height: 35.h, width: 10.w, Vector),
                                      SizedBox(width: 2.w),
                                      Image.asset(
                                          height: 35.h, width: 10.w, Frame2),
                                      SizedBox(width: 2.w),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
