// import 'package:flutter/material.dart';
// import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_home_diwjdoweif/scratch144_aaa_home_controller_djwidow.dart';
// import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
// import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
// import 'package:scratch144_base_dwhidjwo/scratch144_scratch_card_rnqkxm/scratch144_scratch_card_widget_pwsltd.dart';
//
// class Scratch144AaaHomePageDjhwijdowm extends Scratch144WidgetInhgkd<Scratch144AaaHomeControllerDjwidow> {
//   Scratch144AaaHomePageDjhwijdowm({
//     this.scratch144_aaa_reveal_threshold_jfudce = 0.84,
//   });
//
//   final double? scratch144_aaa_reveal_threshold_jfudce;
//   final Scratch144ScratchCardControllerPwsltd
//   scratch144_aaa_card_controller_wcxpzn =
//   Scratch144ScratchCardControllerPwsltd();
//   final double scratch144_aaa_auto4_bottom_gap_pxjrhy = 70;
//   final int scratch144_aaa_auto4_tick_delay_ms_nxvrop = 5;
//
//   Widget scratch144_aaa_build_button_ryzjvq({
//     required String scratch144_aaa_title_pdqkjt,
//     required VoidCallback scratch144_aaa_on_tap_nxmvqe,
//     Color scratch144_aaa_color_zxqtrv = const Color(0xFF1976D2),
//   }) => ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: scratch144_aaa_color_zxqtrv,
//       foregroundColor: Colors.white,
//       padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//     ),
//     onPressed: scratch144_aaa_on_tap_nxmvqe,
//     child: Text(scratch144_aaa_title_pdqkjt),
//   );
//
//   @override
//   Scratch144AaaHomeControllerDjwidow scratch144_init_con_djqgmr() =>
//       Scratch144AaaHomeControllerDjwidow();
//
//   @override
//   Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() =>
//       Scratch144WidgetTypezeuaqu.page;
//
//   @override
//   Widget scratch144_init_widget_xnblzi() => Scaffold(
//     backgroundColor: const Color(0xFFF4F4F4),
//     body: SafeArea(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Scratch144ScratchCardWidgetPwsltd(
//               scratch144_controller_ptjlwm:
//               scratch144_aaa_card_controller_wcxpzn,
//               scratch144_width_qwntvi: 320,
//               scratch144_height_eujpfh: 400,
//               scratch144_reveal_threshold_jfudce:
//               (scratch144_aaa_reveal_threshold_jfudce ?? 0.84)
//                   .clamp(0.01, 0.99)
//                   .toDouble(),
//               scratch144_border_radius_pxkzmr: BorderRadius.circular(16),
//               scratch144_cover_image_vlywop: const NetworkImage(
//                 'https://picsum.photos/640/400',
//               ),
//               scratch144_bottom_widget_fhpgka: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                   gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: <Color>[Color(0xFFFFE082), Color(0xFFFFB74D)],
//                   ),
//                 ),
//                 alignment: Alignment.center,
//                 child: const Text(
//                   '恭喜获得奖励',
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w700,
//                     color: Color(0xFF5D4037),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 18),
//             Wrap(
//               spacing: 8,
//               runSpacing: 8,
//               alignment: WrapAlignment.center,
//               children: <Widget>[
//                 scratch144_aaa_build_button_ryzjvq(
//                   scratch144_aaa_title_pdqkjt: '自动刮1',
//                   scratch144_aaa_on_tap_nxmvqe: () {
//                     scratch144_aaa_card_controller_wcxpzn
//                         .scratch144_start_auto_scratch_jdqzmx(
//                       scratch144_pattern_mode_ystnqe: 1,
//                     );
//                   },
//                 ),
//                 scratch144_aaa_build_button_ryzjvq(
//                   scratch144_aaa_title_pdqkjt: '自动刮2',
//                   scratch144_aaa_on_tap_nxmvqe: () {
//                     scratch144_aaa_card_controller_wcxpzn
//                         .scratch144_start_auto_scratch_jdqzmx(
//                       scratch144_pattern_mode_ystnqe: 2,
//                     );
//                   },
//                 ),
//                 scratch144_aaa_build_button_ryzjvq(
//                   scratch144_aaa_title_pdqkjt: '自动刮3',
//                   scratch144_aaa_on_tap_nxmvqe: () {
//                     scratch144_aaa_card_controller_wcxpzn
//                         .scratch144_start_auto_scratch_jdqzmx(
//                       scratch144_pattern_mode_ystnqe: 3,
//                     );
//                   },
//                 ),
//                 scratch144_aaa_build_button_ryzjvq(
//                   scratch144_aaa_title_pdqkjt: '自动刮4',
//                   scratch144_aaa_on_tap_nxmvqe: () {
//                     scratch144_aaa_card_controller_wcxpzn
//                         .scratch144_start_auto_scratch_jdqzmx(
//                       scratch144_pattern_mode_ystnqe: 4,
//                       scratch144_tick_delay_ms_nxvrop:
//                       3,
//                       scratch144_auto_four_bottom_gap_pmxhtw:
//                       10,
//                     );
//                   },
//                 ),
//                 scratch144_aaa_build_button_ryzjvq(
//                   scratch144_aaa_title_pdqkjt: '重置刮卡',
//                   scratch144_aaa_color_zxqtrv: const Color(0xFFE53935),
//                   scratch144_aaa_on_tap_nxmvqe: () {
//                     scratch144_aaa_card_controller_wcxpzn
//                         .scratch144_reset_card_wnxkqo();
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
