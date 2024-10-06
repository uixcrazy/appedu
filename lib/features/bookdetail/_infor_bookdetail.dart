part of 'book_detail_screen.dart';

extension InforBookDetail on BookDetailScreen {
  Widget _inforBookDetail(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '''Harry Potter and The Philosopher's Stone''',
              style: TextStyle(fontSize: 16, color: AppColor.whiteColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF0E81FC), // Starting color (#0E81FC)
                      Color(0xFF369C09), // Ending color (#369C09)
                    ],
                  ),
                ),
                child: Text(
                  'T16',
                  style: TextStyle(color: AppColor.whiteColor),
                ),
              ),
              Container(
                padding: EdgeInsets.zero,
                child: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Container(
                    margin: const EdgeInsets.only(right: 4),
                    width: 16,
                    height: 16,
                    child: Image.asset(IconConstants.users),
                  )),
                  TextSpan(
                      text: 'J.K.Rowling - EST 1997',
                      style: TextStyle(color: AppColor.greyColor))
                ])),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: RichText(
                text: TextSpan(children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.star,
                    color: AppColor.yellowColor,
                    size: 16,
                  ),
                ),
              ),
              TextSpan(
                  text: ' 4.6',
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600)),
              TextSpan(
                  text: ' (12 review)'.tr,
                  style: TextStyle(
                      color: AppColor.greyColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600)),
            ])),
          ),
          Container(
            margin: const EdgeInsets.only(top: 4),
            child: GradientText(
              '1000 Loyalty Point',
              style: const TextStyle(
                fontSize: 20.0,
              ),
              gradientType: GradientType.radial,
              radius: 2.5,
              colors: const [
                Color(0xFF0E81FC), // Màu bắt đầu (#0E81FC)
                Color(0xFF369C09),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: AppColor.greyColor, width: 2),
                    ),
                    child: Icon(Icons.favorite_outline_sharp,
                        color: AppColor.greyColor)),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: AppColor.blueColor_3,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 24,
                                height: 24,
                                child: Image.asset(IconConstants.addCart))),
                        TextSpan(
                            text: 'Add to cart'.tr,
                            style: TextStyle(color: AppColor.whiteColor)),
                      ]),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                _buildDetailRow(IconConstants.file1, 'Bloomxbury'),
                _buildDetailRow(IconConstants.code, '1234567 890128'),
                _buildDetailRow(IconConstants.clock, '6h 50min'),
                _buildDetailRow(IconConstants.chapters, '115 Chapters'),
                _buildDetailRow(IconConstants.fileType1, 'File type: PDF'),
                _buildDetailRow(IconConstants.language, 'English'),
                const SizedBox(height: 8),
                Container(
                  alignment: Alignment.centerLeft,
                  child: RichText(text: TextSpan(
                    text: 'Content introduction'.tr,
                    style: TextStyle(color: AppColor.whiteColor, fontSize: 16),
                    children: [
                      TextSpan(
                        text: '''\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ... See more
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                        style: TextStyle(color: AppColor.greyColor, fontSize: 14),
                      ),
                    ]),)
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Show more',
                        style: TextStyle(color: Colors.blueAccent)),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.favorite_border, color: Colors.white),
                  Text('My favorite', style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.star, color: Colors.white),
                  Text('Rating', style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.more_horiz, color: Colors.white),
                  Text('More like this', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper widget to build rows in the detail section
  Widget _buildDetailRow(String image, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(image),
          ),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
