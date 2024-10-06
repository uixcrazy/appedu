part of 'library_screen.dart';

extension ListBook on LibraryScreen {
  Widget _listBook(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 2,
                  height: 21,
                  decoration: BoxDecoration(
                    color: AppColor.greenColor_1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  padding: EdgeInsets.zero,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Image.asset(IconConstants.iconChart),
                ),
                Expanded(
                    child: Text(
                  'Trending books'.tr,
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
            LayoutBuilder(
              builder: (context, constraints) {
                // Tính toán chiều rộng của mỗi phần tử trong grid
                double itemWidth =
                    (constraints.maxWidth - 10) / 2; // subtract mainAxisSpacing
                double itemHeight =
                    itemWidth * 2; // Tỷ lệ chiều cao so với chiều rộng
                return GridView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Số lượng cột
                    childAspectRatio: itemWidth /
                        itemHeight, // Tỷ lệ tùy chỉnh theo chiều rộng và chiều cao
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 8, // Số lượng sách hiển thị
                  itemBuilder: (context, index) {
                    return _bookItem(
                        "Harry Potter and the Philosopher's Stone",
                        'https://i.imgur.com/3YOQ1Ok.png',
                        'J.K. Rowling',
                        "1000",
                        () {
                          print('Book $index');
                        });
                  },
                );
              },
            )
          ],
        ));
  }

  // Widget for individual book card
  Widget _bookItem(String title, String image, String author, String price, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  Image.network(
                    image,
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 12),
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
                      )),
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 12),
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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                title,
                style: TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1, // Giới hạn chỉ 1 dòng
                overflow:
                    TextOverflow.ellipsis, // Hiển thị dấu ba chấm khi vượt quá
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
                    text: author, style: TextStyle(color: AppColor.greyColor))
              ])),
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
                  Color(0xFF0E81FC), // Màu bắt đầu (#0E81FC)
                  Color(0xFF369C09),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
