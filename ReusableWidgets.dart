import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Colors.dart';

TextStyle normalDarkText() {
  return TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: darkTextColor,
  );
}

TextStyle normalText() {
  return TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 13,
    color: shadowColor,
  );
}

TextStyle normalLightText() {
  return TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 15,
    color: lightTextColor,
  );
}

TextStyle poppinsRegularButtonBrown() {
  return TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 13.0,
    color: brownLightColor,
  );
}

TextStyle headingText() {
  return TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 22.0,
    color: brownDarkColor,
  );
}

TextStyle bottomNavText() {
  return TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 10.0,
    color: whiteTextColor,
  );
}

Widget lineSeparator() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Expanded(
        child: Divider(
          thickness: 2.0,
          color: lightBrownColor,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Image.asset('assets/category_icons/lineicon.png', height: 50.0,),
      ),
      const Expanded(
        child: Divider(
          thickness: 2.0,
          color: lightBrownColor,
        ),
      ),
    ],
  );
}

Widget drawerItem() {
  // final getBuyerAddressList = Get.put(BuyerAddressListController());
  // final buyerProfileController = Get.put(BuyerProfileController());

  return ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        margin: const EdgeInsets.only(bottom: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      "assets/images/dummy_profile_img.png",
                      color: Colors.white,
                      height: 95.0,
                      width: 95.0,
                      fit: BoxFit.fill,
                    )
                    // Obx(
                    //       () => buyerProfileController.getAvatar.value == ''
                    //       ? Image.asset(
                    //     "assets/images/dummy_profile_img.png",
                    //     color: Colors.white,
                    //     height: 95.0,
                    //     width: 95.0,
                    //     fit: BoxFit.fill,
                    //   )
                    //       : CachedNetworkImage(
                    //     fit: BoxFit.fill,
                    //     height: 95.0,
                    //     width: 95.0,
                    //     imageUrl: buyerProfileController.getAvatar.value,
                    //     placeholder: (context, url) => Transform.scale(
                    //       scale: 0.3,
                    //       child: const LoadingIndicator(
                    //           indicatorType: Indicator.ballPulse, /// Required, The loading type of the widget
                    //           colors: [themeColor, themeColorLight],       /// Optional, The color collections
                    //           strokeWidth: 2,                     /// Optional, The stroke of the line, only applicable to widget which contains line
                    //           backgroundColor: Colors.transparent,      /// Optional, Background of the widget
                    //           pathBackgroundColor: Colors.black   /// Optional, the stroke backgroundColor
                    //       ),
                    //     ),
                    //     errorWidget: (context, url, error) => new Icon(Icons.error),
                    //   ),
                    // ),
                    ),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // buyerProfileController.getName.value,
                        'Dummy Name',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: normalDarkText(),
                      ),
                      Text(
                        // buyerProfileController.getMobileNumber.value,
                        '9876543210',
                        style: normalLightText(),
                      ),
                      Text(
                        // buyerProfileController.getEmail.value,
                        'dummy@gmail.com',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: normalLightText(),
                      ),
                    ],
                  ),
                  // Obx(
                  //       () => Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         buyerProfileController.getName.value,
                  //         overflow: TextOverflow.ellipsis,
                  //         maxLines: 2,
                  //         style: poppinsNavigationDrawerBoldText(),
                  //       ),
                  //       Text(
                  //         buyerProfileController.getMobileNumber.value,
                  //         style: poppinsNavigationDrawerText(),
                  //       ),
                  //       Text(
                  //         buyerProfileController.getEmail.value,
                  //         overflow: TextOverflow.ellipsis,
                  //         maxLines: 2,
                  //         style: poppinsNavigationDrawerText(),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
              ],
            ),
          ],
        ),
      ),
      lineSeparator(),
      ListTile(
        leading: Image.asset('assets/icons/drawer/about.svg'),
        title: Text(
          'About Pavitri Jewellers',
          style: normalDarkText(),
        ),
        onTap: () {
          // Get.to(const AboutScreen());
        },
      ),
      lineSeparator(),
      ExpansionTile(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        childrenPadding: const EdgeInsets.only(left: 10.0),
        leading: Icon(Icons.dashboard),
        // Image.asset('assets/icons/dashboard/orders.svg'),
        title: Text(
          'Orders',
          style: normalDarkText(),
        ),
        children: [
          ListTile(
            leading: Icon(Icons.production_quantity_limits),
            // Image.asset('assets/icons/drawer/add_product.svg'),
            title: Text(
              'My Orders',
              style: normalLightText(),
            ),
            onTap: () {
              // Get.to(BuyerMyOrderScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            // Image.asset('assets/icons/drawer/order_status.svg'),
            title: Text(
              'Tracking',
              style: normalLightText(),
            ),
            onTap: () {
              // Get.to(BuyerMyOrderScreen());
            },
          ),
          ListTile(
            leading:
                // Image.asset('assets/icons/dashboard/cancel_refund.svg'),
                Icon(Icons.cancel),
            title: Text(
              'Cancel & Refund',
              style: normalLightText(),
            ),
            onTap: () {},
          ),
          lineSeparator(),
        ],
      ),
      ListTile(
        leading: Icon(Icons.logout),
        // SvgPicture.asset('assets/icons/drawer/logout.svg'),
        title: Text(
          'Logout',
          style: normalDarkText(),
        ),
        onTap: () {
          // dialogForLogout();
        },
      ),
      const SizedBox(
        height: 60,
      )
    ],
  );
}
