import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:movie_app/commond/commond.dart';
import 'package:movie_app/page/home_screeen_page/data_movie.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

class ChoiseMovieSeat extends StatefulWidget {
  const ChoiseMovieSeat({super.key});

  @override
  State<ChoiseMovieSeat> createState() => _ChoiseMovieSeatState();
}

class _ChoiseMovieSeatState extends State<ChoiseMovieSeat> {
  // bool isTap = false;

  // List<String> nameChair = ["A", "B", "C", "D", "E", "F", "G", "H"];
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as DataMovie;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            size: 30.s,
            color: CommondColor.blackCommond,
          ),
        ),
        title: Text("Chọn ghế",
            style: CommondText.textSize18W600White
                .copyWith(color: CommondColor.blackCommond)),
        actions: [
          GestureDetector(
            onTap: () {
              Share.share(data.linkTrailer);
            },
            child: Icon(
              Icons.reply,
              size: 30.s,
              color: CommondColor.blackCommond,
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          InteractiveViewer(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: CommondColor.blackCommond.withOpacity(0.8),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 80.s),
                    // color: Colors.red,
                    child: Text(
                      "MÀN HÌNH",
                      style: CommondText.textSize18W600White
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ),
                  BuildRowChair(
                    name: 'A',
                    colorNormal: Colors.grey,
                  ),
                  BuildRowChair(
                    colorNormal: Colors.grey,
                    name: 'B',
                  ),
                  BuildRowChair(
                    colorNormal: Colors.grey,
                    name: 'C',
                  ),
                  BuildRowChair(
                    name: 'D',
                  ),
                  BuildRowChair(
                    name: 'E',
                  ),
                  BuildRowChair(
                    name: 'F',
                  ),
                  BuildRowChair(
                    name: 'G',
                  ),
                  BuildRowChair(
                    name: 'H',
                  ),
                  BuildRowChair(
                    name: 'I',
                    colorNormal: Colors.deepPurple.shade700,
                  ),
                  BuildRowChair(
                    colorNormal: Colors.deepPurple.shade700,
                    name: 'J',
                  ),
                  Gap(10.s),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const _BuildTypeChair(
                        name: 'Đang chọn',
                        typeColors: Colors.red,
                      ),
                      Gap(20.s),
                      const _BuildTypeChair(
                        name: 'Đã Đặt',
                        typeColors: Colors.white,
                      ),
                      Gap(20.s),
                      const _BuildTypeChair(
                        name: 'Ghế thường',
                        typeColors: Colors.grey,
                      ),
                    ],
                  ),
                  Gap(5.s),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const _BuildTypeChair(
                        name: 'Ghế VIP',
                        typeColors: Colors.red,
                      ),
                      Gap(20.s),
                      _BuildTypeChair(
                        name: 'SweetBox',
                        typeColors: Colors.deepPurple.shade700,
                      ),
                      Gap(20.s),
                    ],
                  ),
                  Wrap(
                    spacing: 1.s,
                    runSpacing: 1.s,
                    children: [
                      Container(
                        width: 30.s,
                        height: 30.s,
                        color: Colors.deepPurple,
                      ),
                      Container(
                        width: 30.s,
                        height: 30.s,
                        color: Colors.deepPurple,
                      ),
                      Container(
                        width: 30.s,
                        height: 30.s,
                        color: Colors.deepPurple,
                      ),
                      Container(
                        width: 30.s,
                        height: 30.s,
                        color: Colors.deepPurple,
                      ),
                      Container(
                        width: 30.s,
                        height: 30.s,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                  GridView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 10,
                            mainAxisExtent: 5,
                            crossAxisSpacing: 5),
                    itemBuilder: (context, index) => Container(
                      width: 30.s,
                      height: 30.s,
                      color: Colors.deepPurple,
                      child: Text(
                        "A${index.toString()}",
                        style: CommondText.textSize14W500
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),

                    // Container(
                    //   width: 30.s,
                    //   height: 30.s,
                    //   color: Colors.deepPurple,
                    // ),
                    // Container(
                    //   width: 30.s,
                    //   height: 30.s,
                    //   color: Colors.deepPurple,
                    // ),
                    // Container(
                    //   width: 30.s,
                    //   height: 30.s,
                    //   color: Colors.deepPurple,
                    // ),
                    // Container(
                    //   width: 30.s,
                    //   height: 30.s,
                    //   color: Colors.deepPurple,
                    // ),
                    // Container(
                    //   width: 30.s,
                    //   height: 30.s,
                    //   color: Colors.deepPurple,
                    // ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: CommondColor.whiteCommond,
            height: 90.s,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10.s),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  data.movieName,
                  style: CommondText.textSize18W500Black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "2D ",
                          style: CommondText.textSize16W500,
                        ),
                        Text(
                          data.language.isNotEmpty ? "English Sub" : "",
                          style: CommondText.textSize16W500,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10.s, vertical: 10.s),
                            titlePadding: const EdgeInsets.all(0),
                            title: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(data.linkImage)),
                                Positioned(
                                    top: -15.s,
                                    left: -15.s,
                                    child: Icon(
                                      Icons.highlight_off,
                                      size: 30.s,
                                      color: CommondColor.whiteCommond,
                                    )),
                                Positioned(
                                    bottom: -30.s,
                                    left: -30.s,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          CommondColor.blackCommond,
                                      radius: 30.s,
                                    )),
                                Positioned(
                                    bottom: -30.s,
                                    right: -30.s,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          CommondColor.blackCommond,
                                      radius: 30.s,
                                    )),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Gap(20.s),
                                  const _BuildRowInInforTiket(
                                    content1: '28 Dec',
                                    title1: 'DATE : ',
                                    title2: 'TIME : ',
                                    content2: '20h45',
                                  ),
                                  const _BuildRowInInforTiket(
                                    content1: '2',
                                    title1: 'TIKET : ',
                                    title2: 'SEAT : ',
                                    content2: 'B5,B6',
                                  ),
                                  Gap(10.s),
                                  Image.asset("assets/images2/image_code.jpg",
                                      width: 150.s,
                                      height: 50.s,
                                      fit: BoxFit.fill),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.s, vertical: 3.s),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15.s),
                            border:
                                Border.all(color: CommondColor.black54Commond)),
                        child: Center(
                          child: Text("ĐẶT VÉ",
                              style: CommondText.textSize16W500Black54.copyWith(
                                color: CommondColor.whiteCommond,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "150.000 đ ",
                      style: CommondText.textSize16W600,
                    ),
                    Text(
                      "2 ghế",
                      style: CommondText.textSize16W500,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class _BuildRowInInforTiket extends StatelessWidget {
  const _BuildRowInInforTiket({
    Key? key,
    required this.title1,
    required this.content1,
    required this.title2,
    required this.content2,
  }) : super(key: key);
  final String title1;
  final String content1;
  final String title2;
  final String content2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _BuildInforTiket(
          title: title1,
          content: content1,
        ),
        _BuildInforTiket(
          title: title2,
          content: content2,
        )
      ],
    );
  }
}

class _BuildInforTiket extends StatelessWidget {
  const _BuildInforTiket({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: CommondText.textSize18W600White
              .copyWith(color: CommondColor.blackCommond),
        ),
        Text(
          content,
          style: CommondText.textSize18W500Black,
        ),
      ],
    );
  }
}

class _BuildTypeChair extends StatelessWidget {
  const _BuildTypeChair({
    Key? key,
    required this.name,
    required this.typeColors,
  }) : super(key: key);
  final String name;
  final Color typeColors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 15.s,
          height: 15.s,
          color: typeColors,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.s),
          child: Text(
            name,
            style: CommondText.textSize14W500.copyWith(
                fontWeight: FontWeight.w400, color: Colors.grey.shade500),
          ),
        ),
      ],
    );
  }
}

class BuildRowChair extends StatefulWidget {
  BuildRowChair({
    Key? key,
    required this.name,
    this.colorNormal = Colors.red,
    this.isTap = true,
  }) : super(key: key);
  final String name;
  final Color? colorNormal;
  bool isTap;

  @override
  State<BuildRowChair> createState() => _BuildRowChairState();
}

class _BuildRowChairState extends State<BuildRowChair> {
  // final Color? colorOutOfStock;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.s,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              widget.isTap = !widget.isTap;
            });
          },
          child: Padding(
            padding: EdgeInsets.all(1.s),
            child: Container(
              alignment: Alignment.center,
              width: 30.s,
              // height: 20.s,
              color: widget.isTap ? widget.colorNormal : Colors.yellowAccent,
              child: Text(
                "${widget.name}${index.toString()}",
                style: CommondText.textSize14W500
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
