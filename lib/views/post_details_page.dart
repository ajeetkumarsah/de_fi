import 'package:carousel_slider/carousel_slider.dart';
import 'package:de_fi/utils/png_files.dart';
import 'package:de_fi/widgets/comment_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostDetailsScreen extends StatefulWidget {
  const PostDetailsScreen({super.key});

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {
  //int
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
// int

  void onChangeIndex(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  List<String> hashTags = [
    '#2023',
    '#TODAYISMONDAY',
    '#TOP',
    '#POPS!',
    '#WOW',
    '#ROW'
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> imageItems = [
      imageCard(
          'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg'),
      imageCard(
          'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60'),
      imageCard(
          'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aHVtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60'),
      imageCard(
          'https://images.unsplash.com/photo-1461800919507-79b16743b257?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff313B49),
            size: 20,
          ),
        ),
        title: Text(
          '자유톡',
          style: GoogleFonts.notoSans(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell,
              color: Color(0xffAFB9CA),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              leading: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xff01B99F),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    PngFiles.userIcon,
                    height: 38,
                    width: 38,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '안녕 나 응애  ',
                      style: GoogleFonts.notoSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1D232B),
                      ),
                    ),
                    WidgetSpan(
                      child: Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff01B99F),
                        ),
                        child: const Icon(
                          Icons.check,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '  1일전 ',
                      style: GoogleFonts.notoSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff919EB6),
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '165cm  ',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff919EB6),
                      ),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Container(
                        height: 2,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff919EB6),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '  53kg ',
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff919EB6),
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Container(
                height: 24,
                width: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xff01B99F),
                ),
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '팔로우',
                  style: GoogleFonts.notoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                      style: GoogleFonts.notoSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~혹시 어떤 상품이 제일 괜찮았어?\n\n 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아??? \n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
                      style: GoogleFonts.notoSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff313B49),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              spacing: 0,
              runSpacing: 8,
              runAlignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                ...hashTags.map((e) => hashTagWidget(e)).toList(),
              ],
            ),
            const SizedBox(height: 16),
            Stack(
              children: [
                CarouselSlider(
                  items: imageItems,
                  options: CarouselOptions(
                    height: 450,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: selectedIndex,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    onPageChanged: (value, e) => onChangeIndex(value),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedSmoothIndicator(
                        activeIndex: selectedIndex,
                        count: imageItems.length,
                        textDirection: TextDirection.ltr,
                        effect: WormEffect(
                          dotHeight: 6,
                          dotWidth: 6,
                          dotColor: Colors.grey[300]!,
                          activeDotColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  const SizedBox(width: 6),
                  iconWidget(PngFiles.heart),
                  iconWidget(PngFiles.message),
                  iconWidget(PngFiles.bookmark, showText: false),
                  const Icon(
                    Icons.more_horiz_sharp,
                    size: 18,
                    color: Color(0xffAFB9CA),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              color: const Color(0xffF7F8FA),
            ),
            const CommentWidget(
              userIcon: PngFiles.userIcon,
              userName: '안녕 나 응애 ',
              comment:
                  '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 \n우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 \n아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 \n괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 \n꼭 봐주세용~!',
            ),
            const CommentWidget(
              userIcon: PngFiles.userIcon2,
              userName: 'ㅇㅅㅇ ',
              comment: '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
              showComment: false,
              showVerified: false,
              isSubComment: true,
            ),
            const SizedBox(height: 56),
          ],
        ),
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Color(0xffF7F8FA),
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(PngFiles.imageIcon, height: 20, width: 20),
                Expanded(
                  child: CupertinoTextFormFieldRow(
                    placeholder: '댓글을 남겨주세요.',
                    autofocus: true,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffAFB9CA),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '등록',
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffAFB9CA),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget imageCard(String icon) {
    return Image.network(
      icon,
      fit: BoxFit.fitWidth,
      width: double.infinity,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
            strokeWidth: .5,
            color: Colors.black,
          ),
        );
      },
    );
  }

  Widget hashTagWidget(String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xffF7F8FA),
        border: Border.all(
          width: .5,
          color: const Color(0xffCED3DE),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      margin: const EdgeInsets.only(right: 8),
      child: Text(
        title,
        style: GoogleFonts.roboto(
          color: const Color(0xff5A6B87),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

Widget iconWidget(String icon, {bool showText = true, bool isComment = false}) {
  return Padding(
    padding: EdgeInsets.only(right: 12.0, left: isComment ? 0 : 12),
    child: Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Image.asset(
              icon,
              height: 26,
              width: 26,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.top,
            child: showText
                ? Text(
                    '   5',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      height: .7,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff919EB6),
                    ),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    ),
  );
}
