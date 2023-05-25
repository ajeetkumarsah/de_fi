import 'package:de_fi/utils/png_files.dart';
import 'package:de_fi/views/post_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentWidget extends StatelessWidget {
  final String userIcon;
  final String userName;
  final String comment;
  final bool isSubComment;
  final bool showComment;
  final bool showVerified;
  const CommentWidget({
    super.key,
    required this.userIcon,
    required this.userName,
    required this.comment,
    this.isSubComment = false,
    this.showComment = true,
    this.showVerified = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: isSubComment
              ? const EdgeInsets.only(left: 58, right: 16)
              : const EdgeInsets.symmetric(horizontal: 16),
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
                userIcon,
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
                  text: '$userName  ',
                  style: GoogleFonts.notoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff1D232B),
                  ),
                ),
                WidgetSpan(
                  child: showVerified
                      ? Container(
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
                        )
                      : const SizedBox(),
                ),
                TextSpan(
                  text: ' 1일전 ',
                  style: GoogleFonts.notoSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff919EB6),
                  ),
                ),
              ],
            ),
          ),
          trailing: const Icon(
            Icons.more_horiz_sharp,
            size: 18,
            color: Color(0xffAFB9CA),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: isSubComment ? 100 : 58.0, right: 16),
          child: Text(
            comment,
            style: GoogleFonts.notoSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xff313B49),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: isSubComment ? 100 : 58.0, right: 16, top: 8),
          child: Row(
            children: [
              iconWidget(PngFiles.heart, isComment: true),
              showComment
                  ? iconWidget(PngFiles.message, isComment: true)
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
