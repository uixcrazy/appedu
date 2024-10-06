part of 'library_screen.dart';

extension Religion on LibraryScreen {
  Widget _religion(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  padding: EdgeInsets.zero,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Image.asset(IconConstants.religion),
                ),
                Expanded(
                    child: Text(
                  'Religion'.tr,
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
                GestureDetector(
                  onTap: () {
                    print('See more');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'See more'.tr,
                            style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 14,
                            ),
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    height:
                        200, // Chiều cao của ListView để cuốn sách vừa hiển thị theo chiều ngang
                    child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal, // Cuộn theo chiều ngang
                      itemCount: 8, // Số lượng sách hiển thị
                      itemBuilder: (context, index) {
                        return Container(
                          width: Get.width / 1 - 40, // Chiều rộng của từng sách
                          margin: const EdgeInsets.only(
                              right: 10), // Khoảng cách giữa các sách
                          child: _bookItem(
                            "Harry Potter and the Philosopher's Stone",
                            'https://i.imgur.com/3YOQ1Ok.png',
                            'J.K. Rowling',
                            "1000",
                            () {
                              print('Book $index');
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }

  // Widget for individual book card
  Widget _bookItem(String title, String image, String author, String price,
      VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  Image.network(
                    image,
                    height: 160, // Chiều cao của hình ảnh (điều chỉnh phù hợp)
                    width: 120, // Chiều rộng của hình ảnh
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF0E81FC),
                              Color(0xFF369C09),
                            ],
                          ),
                        ),
                        child: Text(
                          'T16',
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                      )),
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColor.blueColor_1,
                        ),
                        child: Text(
                          'Fiction',
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(width: 12), // Khoảng cách giữa hình ảnh và nội dung
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Container(
                              margin: const EdgeInsets.only(right: 4),
                              width: 16,
                              height: 16,
                              child: Image.asset(IconConstants.users),
                            ),
                          ),
                          TextSpan(
                              text: author,
                              style: TextStyle(color: AppColor.greyColor)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: GradientText(
                      '$price Loyalty Point',
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                      gradientType: GradientType.radial,
                      radius: 2.5,
                      colors: const [
                        Color(0xFF0E81FC),
                        Color(0xFF369C09),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
