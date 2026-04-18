// part of '../../../wird_book.dart';

// const String mushafLayoutTypePreferenceKey = 'mushaf_layout_type';
// const String mushafLayout13Line = '13_line';
// const String mushafLayout15Line = '15_line';

// class MushafLayoutDataSource {
//   static Future<List<MushafLayoutModel>> getLayouts() {
//     final jsonList = mushafLayoutsJson();
//     return Future.value(
//       jsonList.map((e) => MushafLayoutModel.fromJson(e)).toList(),
//     );
//   }

//   static List<Map<String, dynamic>> mushafLayoutsJson() {
//     return [
//       {
//         'id': 2,
//         'type': '15_line',
//         'layout_db_url':
//             'http://portal.devssol.com/uploads/database/qpc-v1-15-lines.db',
//         'words_db_url':
//             'http://portal.devssol.com/uploads/database/qpc-hafs-word-by-word.db',
//         'is_default': true,
//         'font_family':
//             'https://portal.devssol.com/uploads/database/qpc.ttf.bz2',
//       },
//       {
//         'id': 1,
//         'type': '13_line',
//         'layout_db_url':
//             'http://portal.devssol.com/uploads/database/indopak-13-lines-taj-company 3.db',
//         'words_db_url':
//             'http://portal.devssol.com/uploads/database/qpc-hafs-word-by-word.db',
//         'is_default': false,
//         'font_family':
//             'https://portal.devssol.com/uploads/database/indopak.ttf.zip',
//       },
//     ];
//   }
// }
