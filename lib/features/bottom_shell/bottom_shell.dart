// part of '../../loanscope.dart';

// final GlobalKey<ScaffoldState> shellKey = GlobalKey<ScaffoldState>();

// class BottomNavShell extends ConsumerStatefulWidget {
//   final Widget child;
//   const BottomNavShell({super.key, required this.child});

//   @override
//   ConsumerState<BottomNavShell> createState() => _BottomNavShellState();
// }

// class _BottomNavShellState extends ConsumerState<BottomNavShell> {
//   List<Map<String, dynamic>> get bottomNavigationItems => [
//     {'icon': Icons.home, 'route': AppRoutes.dashboard},
//     {
//       'icon': Icons.calendar_month_outlined,
//       'route': AppRoutes.dashboard,
//       'isPlaceholder': true,
//     },
//     {
//       'icon': Icons.add,
//       'route': AppRoutes.dashboard,
//       'isCenter': true,
//       'isPlaceholder': true,
//     },
//     {
//       'icon': FontAwesomeIcons.chartLine,
//       'route': AppRoutes.dashboard,
//       'size': 20.0,
//       'isPlaceholder': true,
//     },
//     {
//       'icon': FontAwesomeIcons.userGear,
//       'route': AppRoutes.dashboard,
//       'size': 20.0,
//       'isPlaceholder': true,
//     },
//   ];

//   Widget buildBottomNavigationBar(BuildContext context) {
//     final currentPath = GoRouterState.of(context).uri.path;
//     bool isRouteSelected(AppRoutes route) {
//       if (route == AppRoutes.dashboard) {
//         return currentPath.startsWith(route.path);
//       }
//       return currentPath == route.path;
//     }

//     return Padding(
//       padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
//       child: SizedBox(
//         height: 65,
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             // Bottom bar background and icons
//             Container(
//               decoration: BoxDecoration(
//                 color: AppColors.white,
//                 borderRadius: const BorderRadius.all(Radius.circular(100)),
//                 border: Border.all(color: AppColors.whiteF2, width: 1),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16,
//                   vertical: 8,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       // First two icons
//                       ...List.generate(2, (index) {
//                         final item = bottomNavigationItems[index];
//                         final isSelected =
//                             !(item['isPlaceholder'] as bool? ?? false) &&
//                             isRouteSelected(item['route'] as AppRoutes);
//                         return InkWell(
//                           onTap: () {
//                             final isPlaceholder =
//                                 item['isPlaceholder'] as bool? ?? false;
//                             if (isPlaceholder) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('This section is coming soon.'),
//                                   duration: Duration(seconds: 1),
//                                 ),
//                               );
//                               return;
//                             }
//                             context.go((item['route'] as AppRoutes).path);
//                           },
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 item['icon'] as IconData,
//                                 color: isSelected
//                                     ? AppColors.primary
//                                     : AppColors.color8A94A6,
//                                 size: 26,
//                               ),
//                               if (isSelected) const SizedBox(height: 4),

//                               if (isSelected)
//                                 Container(
//                                   width: 4,
//                                   height: 4,
//                                   decoration: BoxDecoration(
//                                     color: isSelected
//                                         ? AppColors.primary
//                                         : Colors.transparent,
//                                     borderRadius: BorderRadius.circular(2),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                         );
//                       }),
//                       // Spacer for center button
//                       const SizedBox(width: 56),
//                       // Last two icons
//                       ...List.generate(2, (index) {
//                         final item = bottomNavigationItems[index + 3];
//                         final isSelected =
//                             !(item['isPlaceholder'] as bool? ?? false) &&
//                             isRouteSelected(item['route'] as AppRoutes);
//                         return InkWell(
//                           onTap: () {
//                             final isPlaceholder =
//                                 item['isPlaceholder'] as bool? ?? false;
//                             if (isPlaceholder) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('This section is coming soon.'),
//                                   duration: Duration(seconds: 1),
//                                 ),
//                               );
//                               return;
//                             }
//                             context.go((item['route'] as AppRoutes).path);
//                           },
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 item['icon'] as IconData,
//                                 color: isSelected
//                                     ? AppColors.primary
//                                     : AppColors.color8A94A6,
//                                 size: item.containsKey('size')
//                                     ? item['size'] as double
//                                     : 26,
//                               ),
//                               if (isSelected) const SizedBox(height: 4),
//                               if (isSelected)
//                                 Container(
//                                   width: 4,
//                                   height: 4,
//                                   decoration: BoxDecoration(
//                                     color: isSelected
//                                         ? AppColors.primary
//                                         : Colors.transparent,
//                                     borderRadius: BorderRadius.circular(2),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                         );
//                       }),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             // Floating center button
//             Positioned(
//               top: -28,
//               left: 0,
//               right: 0,
//               child: Center(
//                 child: InkWell(
//                   onTap: () {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                         content: Text('Quick action is coming soon.'),
//                         duration: Duration(seconds: 1),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     width: 74,
//                     height: 74,
//                     decoration: BoxDecoration(
//                       color: AppColors.primary,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: AppColors.white, width: 5),
//                       boxShadow: [
//                         BoxShadow(
//                           color: AppColors.primary.withOpacity(0.25),
//                           blurRadius: 32,
//                           spreadRadius: 2,
//                           offset: const Offset(0, 15),
//                         ),
//                       ],
//                     ),
//                     child: Center(
//                       child: Icon(
//                         bottomNavigationItems[2]['icon'] as IconData,
//                         color: Colors.white,
//                         size: 42,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final dashboardState = ref.watch(dashboardPProvider);
//     return Scaffold(
//       key: shellKey,
//       // appBar: appBarWidget(),
//       body: Stack(
//         children: [
//           widget.child,
//           // Positioned(top: 0, left: 0, right: 0, child: appBarWidget()),
//           SizedBox(height: 100, child: appBarWidget()),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: buildBottomNavigationBar(context),
//           ),
//         ],
//       ),
//       // bottomNavigationBar: buildBottomNavigationBar(context),
//     );
//   }
// }
