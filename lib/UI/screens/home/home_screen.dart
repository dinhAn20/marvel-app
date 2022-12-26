import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marvel_app/UI/components/character_list_view.dart';
import 'package:marvel_app/UI/components/section_header_widget.dart';
import 'package:marvel_app/controllers/home/home_controller.dart';
import 'package:marvel_app/core/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.find();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812),
      minTextAdapt: true,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: colorDark,
            ),
        title: SizedBox(
          width: 71,
          child: ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color(0xFFED1D24), Color(0xFFED1F69)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 1],
            ).createShader(bounds),
            blendMode: BlendMode.srcATop,
            child: Image.asset('assets/Marvel Logo.png', fit: BoxFit.contain),
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/Menu.svg'),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/Search.svg'),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Welcome to Marvel App', style: textStyleSemiBold),
                  Text('Choose your character', style: textStyleHeavy32),
                ]),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: SectionHeaderWidget(title: "Characters"),
            ),
            CharacterListView(characters: homeController.characters),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: SectionHeaderWidget(title: "Comics"),
            ),
            CharacterListView(characters: homeController.characters),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: SectionHeaderWidget(title: "Creators"),
            ),
            CharacterListView(characters: homeController.characters),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: SectionHeaderWidget(title: "Events"),
            ),
            CharacterListView(characters: homeController.characters),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: SectionHeaderWidget(title: "Series"),
            ),
            CharacterListView(characters: homeController.characters),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: SectionHeaderWidget(title: "Stories"),
            ),
            CharacterListView(characters: homeController.characters),
          ],
        ),
      ),
    );
  }
}
