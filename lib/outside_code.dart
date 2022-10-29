// NestedScrollView(
//   controller: ScrollController(keepScrollOffset: true),
//   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//     return <Widget>[
//       SliverList(
//         delegate: SliverChildListDelegate ([
//           Padding(
//             padding: EdgeInsets.only(left: 25.w, right: 25.w),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     "Explore",
//                     style: GoogleFonts.montserrat(
//                       textStyle: TextStyle(),
//                       fontSize: 35.sp,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   customTextField(
//                       TextInputType.text,
//                       false,
//                       _searchController,
//                       Icons.search,
//                       context,
//                       "Search Destination",
//                       (){}
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       exploreItem(Icons.storefront_rounded, "Katembas",
//                           0xFFA12ED6),
//                       exploreItem(
//                           Icons.restaurant, "Restaurants", 0xFFB923D8),
//                       exploreItem(Icons.car_repair, "Cars", 0xFFE50CDA),
//                       exploreItem(Icons.real_estate_agent_outlined,
//                           "Real Estate", 0xFFF610DC),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     "Popular",
//                     style: GoogleFonts.montserrat(
//                       textStyle: TextStyle(),
//                       fontSize: 35.sp,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ]),
//       ),
//     ];
//   },
//   body: Padding(
//     padding: EdgeInsets.only(left: 25.w, right: 25.w),
//     child: GridView.builder(
//       itemCount: 20,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         childAspectRatio: 0.65,
//         crossAxisCount: 2,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//       ),
//       itemBuilder: (_, index) {
//         return GestureDetector(
//           child: ClipRRect(
//             borderRadius: BorderRadius.all(
//               Radius.circular(7.r),
//             ),
//             child: Stack(
//               children: [
//                 Image.asset(
//                   "assets/images/burger.jpeg",
//                   fit: BoxFit.cover,
//                   height: double.maxFinite,
//                 ),
//                 Positioned(
//                   child: SizedBox(
//                     height: 80.h,
//                     child: ClipRRect(
//                       child: BackdropFilter(
//                         filter:
//                             ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.0),
//                           ),
//                           child: Padding(
//                             padding:
//                                 EdgeInsets.only(left: 10.w, right: 10.w),
//                             child: Row(
//                               mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment:
//                                   CrossAxisAlignment.center,
//                               children: [
//                                 Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.center,
//                                   crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Burger",
//                                       style: TextStyle(fontSize: 18.sp),
//                                     ),
//                                     Text("A merchant"),
//                                   ],
//                                 ),
//                                 CircleAvatar(
//                                   radius: 18.r,
//                                   backgroundColor: Colors.white,
//                                   child: Obx(
//                                     () => InkWell(
//                                       onTap: () => _favourite.value =
//                                           !_favourite.value,
//                                       child: Icon(
//                                         _favourite.value == false
//                                             ? Icons
//                                                 .favorite_border_outlined
//                                             : Icons.favorite_outlined,
//                                         size: 20.w,
//                                         color: _favourite.value == false
//                                             ? Colors.black
//                                             : AppColors.violetColor,
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           onTap: () {
//             Get.toNamed(profile);
//           },
//         );
//       },
//     ),
//   ),
// ),