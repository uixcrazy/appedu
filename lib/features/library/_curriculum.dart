part of 'library_screen.dart';

extension Curriculum on LibraryScreen {
  Widget _curriculum(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
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
                  child: Image.asset(IconConstants.curriculum),
                ),
                Expanded(
                    child: Text(
                  'Curriculum'.tr,
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
                    height: Get.height *
                        0.16, // Chiều cao của ListView để cuốn sách vừa hiển thị theo chiều ngang
                    child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal, // Cuộn theo chiều ngang
                      itemCount: 8, // Số lượng sách hiển thị
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          width: Get.width - 40, // Chiều rộng của từng sách
                          margin: const EdgeInsets.only(
                              right: 10), // Khoảng cách giữa các sách
                          child: _buildItemCuriculum(
                            'Curriculum $index',
                            ImageConstants.admission,
                            '10:00',
                            1000,
                            () {
                              print('Curriculum $index');
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    height: Get.height *
                        0.16, // Chiều cao của ListView để cuốn sách vừa hiển thị theo chiều ngang
                    child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal, // Cuộn theo chiều ngang
                      itemCount: 8, // Số lượng sách hiển thị
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          width: Get.width - 40, // Chiều rộng của từng sách
                          margin: const EdgeInsets.only(
                              right: 10), // Khoảng cách giữa các sách
                          child: _buildItemCuriculum(
                            'Curriculum $index',
                            ImageConstants.admission,
                            '10:00',
                            1000,
                            () {
                              print('Curriculum $index');
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

  Widget _buildItemCuriculum(String title, String imagePath, String time,
      double price, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: Get.width * 0.34,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        padding: EdgeInsets.zero,
                        width: 24,
                        height: 24,
                        child: Image.asset(IconConstants.ph_video),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Text('Video'.tr,
                            style: TextStyle(
                                color: AppColor.whiteColor, fontSize: 14)),
                      ),
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.greyColor,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 4),
                        child: Text(time,
                            style: TextStyle(
                                color: AppColor.whiteColor.withOpacity(0.8),
                                fontSize: 14)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Learning progress'.tr,
                        style: TextStyle(
                            color: AppColor.whiteColor.withOpacity(0.8),
                            fontSize: 14)),
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
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColor.blueColor_1,
                borderRadius: BorderRadius.circular(24),
              ),
              child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(IconConstants.epMore)),
            )
          ],
        ),
      ),
    );
  }
}
