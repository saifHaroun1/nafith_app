import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naphs_app/widgets/Hint.dart';
import 'package:naphs_app/widgets/app_store_button.dart';
import 'package:naphs_app/widgets/circle_photo.dart';
import 'package:naphs_app/widgets/custom_button.dart';
import 'package:naphs_app/widgets/download_button.dart';
import 'package:naphs_app/widgets/google_play_button.dart';
import 'package:naphs_app/widgets/row_text.dart';
import 'package:naphs_app/widgets/text_bold.dart';
import 'package:naphs_app/widgets/text_bold_36.dart';
import 'package:naphs_app/widgets/text_in_row.dart';
import 'package:naphs_app/widgets/text_poppins.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  String selectedTitle = "الرئيسية";

  void updateSelectedTitle(String title) {
    setState(() {
      selectedTitle = title;
    });
  }

  final phase1 = GlobalKey();
  final phase2 = GlobalKey();
  final phase3 = GlobalKey();
  final phase4 = GlobalKey();
  final phase5 = GlobalKey();

  Future scrollToItem1() async {
    final context = phase1.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  Future scrollToItem2() async {
    final context = phase2.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  Future scrollToItem3() async {
    final context = phase3.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  Future scrollToItem4() async {
    final context = phase4.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  Future scrollToItem5() async {
    final context = phase5.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent, // إزالة لون الخلفية
                elevation: 0, // إزالة الظل
                pinned: true,
                forceElevated: false, // تثبيت الـ AppBar عند التمرير
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
                                  "assets/app_bar_naphs.png",
                                  height: 250.h,
                                  //width: 60.w,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextInRow(
                                    title: "الرئيسية",
                                    isSelected: selectedTitle == "الرئيسية",
                                    onTap: () {
                                      updateSelectedTitle("الرئيسية");
                                      scrollToItem1();
                                    },
                                  ),
                                ),
                                const SizedBox(width: 18),
                                TextInRow(
                                  title: "الدفع",
                                  isSelected: selectedTitle == "الدفع",
                                  onTap: () {
                                    updateSelectedTitle("الدفع");
                                    scrollToItem5();
                                  },
                                ),
                                const SizedBox(width: 18),
                                TextInRow(
                                  title: "رأي العملاء",
                                  isSelected: selectedTitle == "رأي العملاء",
                                  onTap: () {
                                    updateSelectedTitle("رأي العملاء");
                                    scrollToItem3();
                                  },
                                ),
                                const SizedBox(width: 18),
                                TextInRow(
                                  title: "المتجر",
                                  isSelected: selectedTitle == "المتجر",
                                  onTap: () {
                                    updateSelectedTitle("المتجر");
                                    scrollToItem2();
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
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 90, right: 180),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextPoppins(
                                          title: "نافث",
                                          color: Color(0xff212121)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: TextPoppins(
                                            title: "تطبيق",
                                            color: Color(0xff8E97FD)),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Hint(
                                          title:
                                              "،علاجك الفعال من العين والحسد والسحر والمس",
                                          color: Color(0xff6C87AE)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Hint(
                                          title:
                                              "عن طريق الرقية الشرعية (عن بعد)",
                                          color: Color(0xff6C87AE)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50, top: 20),
                                      child: DownloadButton(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              child: Image.asset("assets/mobile.png"),
                              width: 180.w,
                              height: 650.h,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F9FF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250.h,
                    ),
                    Container(
                      key: phase1,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 150),
                                    child:
                                        CirclePhoto(Photo: "assets/photo1.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 150, top: 35),
                                    child: TextBold(
                                        color: Color(0xff212121),
                                        size: 24,
                                        title: "يضم أمهر الرقاه"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 75, bottom: 20),
                                    child: Hint(
                                        title:
                                            "يضم أمهر الرقاة ليكونو سبب لشفائك بإذن الله",
                                        color: Color(0xff747474)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 210),
                                  child:
                                      CirclePhoto(Photo: "assets/photo2.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 170, top: 35),
                                  child: TextBold(
                                      color: Color(0xff212121),
                                      size: 24,
                                      title: "غرف للسيدات فقط"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 40, bottom: 20),
                                  child: Hint(
                                      title:
                                          "يضم غرف للسيدات فقط للحفاظ على الخصوصية",
                                      color: Color(0xff747474)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190),
                                  child:
                                      CirclePhoto(Photo: "assets/photo3.png"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 70, top: 35),
                                  child: TextBold(
                                      color: Color(0xff212121),
                                      size: 24,
                                      title: "إشعارات دائمة بموعد المقابلة"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 50),
                                  child: Hint(
                                      title:
                                          "تلقى اشعارات دائمة ليصبح التطبيق جزء من يومك",
                                      color: Color(0xff747474)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 45),
                                  child: Hint(
                                      title:
                                          "ويذكرك بمواعيد مقابلاتك مع الرقاه",
                                      color: Color(0xff747474)),
                                )
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
                          child: Image.asset("assets/phase3.png"),
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
                        Column(
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: TextBold36(
                                      color: Color(0xff212121),
                                      title: "متجر كامل يلبي احتياجاتك في"),
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 230, top: 10),
                                  child: TextBold36(
                                      color: Color(0xff212121),
                                      title: "الشفاء"),
                                )),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 160),
                                child: Hint(
                                    title:
                                        "يحتوي نافث على متجر الكتروني به كل ما تحتاجه في رحلتك في",
                                    color: Color(0xff747474)),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 150),
                                child: Hint(
                                    title:
                                        "الشفاء، من مياه مقروء عليها و ماء زمزم وغيرها من المنتجات",
                                    color: Color(0xff747474)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            key: phase5,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: TextBold36(
                                    color: Color(0xff212121),
                                    title: ",عمليات دفع أمنه وسلسة"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 120),
                                child: TextBold36(
                                    color: Color(0xff212121),
                                    title: "وبأسعار رمزية"),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 180),
                                child: Hint(
                                    title:
                                        "بأسعار رمزية يغنيك تطبيق نافث عن إضاعه اموال طائلة ووقت",
                                    color: Color(0xff747474)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 25),
                                child: Hint(
                                    title:
                                        "ومجهود في التردد على المشايخ والرقاه",
                                    color: Color(0xff747474)),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          key: phase5,
                          child: Image.asset("assets/phase4.png"),
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
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 100, right: 100),
                              child: TextBold36(
                                title: "%50 حمل التطبيق الان واحصل على خصم",
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                              child: TextBold36(
                                  title: "التطبيق متوفر للاندرويد والايفون",
                                  color: Color(0xffFFFFFF)),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 280, bottom: 50),
                                  child: GooglePlayButton(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 50, left: 40),
                                  child: AppStoreButton(),
                                )
                              ],
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
                          child: Image.asset("assets/Phone Perspective.png"),
                          width: 200.w,
                          height: 650.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 300, top: 150),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: RichText(
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
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 100, top: 20),
                                        child: TextBold(
                                            title: "احمد مصطفى",
                                            size: 18,
                                            color: Color(0xff212121)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 90),
                                        child: Hint(
                                            title: "Student at University",
                                            color: Color(0xff747474)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 80),
                                child: Text(
                                  " “  تطبيق رائع ومبارك، ساعدني كثير، تحية لكل العاملين عليه “ ",
                                  style: TextStyle(
                                    fontSize: 5.sp,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 150.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 280),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      size: 32,
                                      color: Color(0xff8E97FD),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: 32,
                                        color: Color(0xff8E97FD),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // توزيع متساوٍ للعناصر
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 50),
                                    child: Image.asset(
                                      "assets/naphs.png",
                                      height: 200.h,
                                      width: 200.w,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Text(
                                      "،هدفنا مساعدة اكبر عدد من الناس في جميع المراحل",
                                      style: TextStyle(
                                          color: Color(0xff6C87AE),
                                          fontSize: 4.sp), // لون وحجم النص
                                      softWrap:
                                          false, // منع تقسيم النص على عدة أسطر
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 100, left: 50),
                                    child: Align(
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Hint(
                                          title:
                                              "للوصول للشفاء التام وعيش حياة افضل",
                                          color: Color(0xff6C87AE)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70),
                                    child: TextBold(
                                        title: "Sitemaps",
                                        size: 24,
                                        color: Color(0xff000000)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 190,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 80, bottom: 10),
                                      child: RowText(title: "Home"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 190, bottom: 10),
                                    child: RowText(title: "Features"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 190),
                                    child: RowText(title: "About Us"),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: TextBold(
                                        title: "Advantages",
                                        size: 24,
                                        color: Color(0xff000000)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 150,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 80, bottom: 10),
                                      child: RowText(title: "Set Task Better"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 150, bottom: 10),
                                    child: RowText(title: "Easy Manage"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150),
                                    child: RowText(title: "Get Notification"),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: TextBold(
                                        title: "Follow Us",
                                        size: 24,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, top: 70, bottom: 50),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // توسيط الأيقونات
                                      children: [
                                        Image.asset(
                                            "assets/uim_facebook-f.png"),
                                        SizedBox(width: 5.w), // مسافة بين الصور
                                        Image.asset("assets/Vector.png"),
                                        SizedBox(width: 8.w),
                                        Image.asset("assets/Frame 2 (1).png")
                                      ],
                                    ),
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
