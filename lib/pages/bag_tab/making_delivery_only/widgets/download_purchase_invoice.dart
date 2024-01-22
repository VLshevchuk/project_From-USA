// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:from_usa/help_widgets/text_widget.dart';

// class DownloadPurchaseInvoice extends StatelessWidget {
//   const DownloadPurchaseInvoice({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 96.0,
//       width: 328.0,
//       decoration: BoxDecoration(
//         boxShadow: const [
//           BoxShadow(
//             spreadRadius: 2.0,
//             color: Color.fromRGBO(19, 59, 119, 0.13),
//             offset: Offset(0, 9),
//             blurRadius: 14.0,
//           ),
//         ],
//         borderRadius: BorderRadius.circular(
//           10.0,
//         ),
//         color: Colors.white,
//       ),
//       child: Row(
//         children: [
//           const SizedBox(
//             width: 21,
//           ),
//           SvgPicture.asset(
//             "assetsBag/assetsSvg/list.svg",
//           ),
//           const SizedBox(
//             width: 21,
//           ),
//           SvgPicture.asset(
//             "assetsBag/assetsSvg/lineblue.svg",
//           ),
//           const SizedBox(
//             width: 22,
//           ),
//           InkWell(
//             onTap: () {
//             },
//             child: const TextWidgets(
//               text: "Загрузите инвойс покупки",
//               fontFamily: 'Lato',
//               fontSize: 14.0,
//               fontWeight: FontWeight.w400,
//               color: Color.fromRGBO(19, 59, 119, 1.0),
//               letterSpacing: 1.0,
//             ),
//           ),
//           const SizedBox(
//             width: 11,
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: SvgPicture.asset(
//               "assetsBag/assetsSvg/questionIcon.svg",
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
